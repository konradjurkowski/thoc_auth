import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_auth/domain/repository/auth_repository.dart';
import 'package:thoc_auth/navigation/auth_navigation.dart';
import 'package:thoc_auth/presentation/register/ise/register_ise.dart';
import 'package:thoc_core/architecture/base_controller.dart';
import 'package:thoc_core/domain/usecases/validate_email_use_case.dart';
import 'package:thoc_core/domain/usecases/validate_password_use_case.dart';

class RegisterController extends BaseController<RegisterState, RegisterIntent, RegisterEvent> {

  @override
  RegisterState buildState() {
    _authNavigation = ref.read(authNavigationProvider);
    _authRepository = ref.read(authRepositoryProvider);
    _validateEmail = ref.read(validateEmailUseCaseProvider);
    _validatePassword = ref.read(validatePasswordUseCaseProvider);

    return const RegisterState();
  }

  late AuthNavigation _authNavigation;
  late AuthRepository _authRepository;
  late ValidateEmailUseCase _validateEmail;
  late ValidatePasswordUseCase _validatePassword;
  final _cancelToken = CancelToken();

  @override
  void processIntent(RegisterIntent intent) {
    intent.when(
      backPressed: () => _authNavigation.navigateBack(),
      firstNameChanged: (firstName) => state = state.copyWith(firstName: firstName),
      lastNameChanged: (lastName) => state = state.copyWith(lastName: lastName),
      emailChanged: (email) => state = state.copyWith(email: email),
      passwordChanged: (password) => state = state.copyWith(password: password),
      togglePasswordVisibility: () => state = state.copyWith(obscurePassword: !state.obscurePassword),
      repeatedPasswordChanged: (repeatedPassword) => state = state.copyWith(repeatedPassword: repeatedPassword),
      toggleRepeatedPasswordVisibility: () => state = state.copyWith(obscureRepeatedPassword: !state.obscureRepeatedPassword),
      registerPressed: (firstName, lastName, email, password, repeatedPassword) {
        register(firstName: firstName, lastName: lastName, email: email, password: password, repeatedPassword: repeatedPassword);
    },
    );
  }

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String repeatedPassword,
  }) async {
    final emailValidation = _validateEmail.execute(email);
    final passwordValidation = _validatePassword.execute(password);

    state = state.copyWith(
      emailValidation: emailValidation,
      passwordValidation: passwordValidation,
    );

    if (!emailValidation.successful || !passwordValidation.successful) return;

    final result = await _authRepository.register(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      cancelToken: _cancelToken,
    );

    result.when((failure) {
      if (failure.isCanceled()) return;

      sendEvent(RegisterEvent.showError(failure));
      state = state.copyWith(registerState: AsyncError(failure, StackTrace.current));
    }, (_) {
      _authNavigation.navigateToHome();
      state = state.copyWith(registerState: const AsyncData(null));
    });
  }
}

final registerControllerProvider = NotifierProvider
    .autoDispose<RegisterController, RegisterState>(RegisterController.new);
