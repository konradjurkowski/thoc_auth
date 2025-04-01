import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_auth/presentation/login/ise/login_ise.dart';
import 'package:thoc_core/architecture/base_controller.dart';
import 'package:thoc_core/domain/usecases/validate_email_use_case.dart';

class LoginController extends BaseController<LoginState, LoginIntent, LoginEvent> {

  @override
  LoginState buildState() {
    _validateEmail = ref.read(validateEmailUseCaseProvider);

    return const LoginState();
  }

  late ValidateEmailUseCase _validateEmail;

  @override
  void processIntent(LoginIntent intent) {
    intent.when(
      emailChanged: (email) => state = state.copyWith(email: email),
      passwordChanged: (password) => state = state.copyWith(password: password),
      togglePasswordVisibility: () => state = state.copyWith(obscurePassword: !state.obscurePassword),
      forgotPasswordPressed: () => sendEvent(const LoginEvent.goToForgotPassword()),
      createAccountPressed: () => sendEvent(const LoginEvent.goToRegister()),
      loginPressed: (email, password) => signIn(email, password),
    );
  }

  Future<void> signIn(String email, String password) async {
    final emailValidation = _validateEmail.execute(email);
    state = state.copyWith(emailValidation: emailValidation);
    if (!emailValidation.successful) return;

    state = state.copyWith(loginState: const AsyncLoading());
    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(loginState: const AsyncData(null));
    sendEvent(const LoginEvent.goToHome());
  }
}

final loginControllerProvider = NotifierProvider
    .autoDispose<LoginController, LoginState>(LoginController.new);
