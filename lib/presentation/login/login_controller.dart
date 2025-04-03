import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_auth/domain/repository/auth_repository.dart';
import 'package:thoc_auth/presentation/login/ise/login_ise.dart';
import 'package:thoc_core/architecture/base_controller.dart';
import 'package:thoc_core/domain/usecases/validate_email_use_case.dart';

class LoginController extends BaseController<LoginState, LoginIntent, LoginEvent> {

  @override
  LoginState buildState() {
    _authRepository = ref.read(authRepositoryProvider);
    _validateEmail = ref.read(validateEmailUseCaseProvider);

    return const LoginState();
  }

  late AuthRepository _authRepository;
  late ValidateEmailUseCase _validateEmail;
  final _cancelToken = CancelToken();

  @override
  void processIntent(LoginIntent intent) {
    intent.when(
      emailChanged: (email) => state = state.copyWith(email: email),
      passwordChanged: (password) => state = state.copyWith(password: password),
      togglePasswordVisibility: () => state = state.copyWith(obscurePassword: !state.obscurePassword),
      forgotPasswordPressed: () => sendEvent(const LoginEvent.goToForgotPassword()),
      createAccountPressed: () => sendEvent(const LoginEvent.goToRegister()),
      loginPressed: (email, password) => login(email, password),
    );
  }

  Future<void> login(String email, String password) async {
    final emailValidation = _validateEmail.execute(email);
    state = state.copyWith(emailValidation: emailValidation);
    if (!emailValidation.successful) return;

    state = state.copyWith(loginState: const AsyncLoading());
    final result = await _authRepository.login(
        email: email,
        password: password,
        cancelToken: _cancelToken,
    );

    result.when((failure) {
      if (failure.isCanceled()) return;

      sendEvent(LoginEvent.showError(failure));
      state = state.copyWith(loginState: AsyncError(failure, StackTrace.current));
    }, (_) {
      sendEvent(const LoginEvent.goToHome());
      state = state.copyWith(loginState: const AsyncData(null));
    });
  }
}

final loginControllerProvider = NotifierProvider
    .autoDispose<LoginController, LoginState>(LoginController.new);
