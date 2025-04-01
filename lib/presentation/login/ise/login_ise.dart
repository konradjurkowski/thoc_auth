import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thoc_core/domain/model/validation_result.dart';

part 'login_ise.freezed.dart';

@freezed
sealed class LoginIntent with _$LoginIntent {
  const factory LoginIntent.emailChanged(String email) = _EmailChanged;
  const factory LoginIntent.passwordChanged(String password) = _PasswordChanged;
  const factory LoginIntent.togglePasswordVisibility() =_TogglePasswordVisibility;
  const factory LoginIntent.forgotPasswordPressed() = _ForgotPasswordPressed;
  const factory LoginIntent.createAccountPressed() = _CreateAccountPressed;
  const factory LoginIntent.loginPressed({
    required String email,
    required String password,
  }) = _LoginPressed;
}

extension LoginIntentExt on LoginIntent {
  void when({
    required void Function(String email) emailChanged,
    required void Function(String password) passwordChanged,
    required void Function() togglePasswordVisibility,
    required void Function() forgotPasswordPressed,
    required void Function() createAccountPressed,
    required void Function(String email, String password) loginPressed,
  }) {
    switch (this) {
      case _EmailChanged(:final email):
        emailChanged.call(email);
        break;
      case _PasswordChanged(:final password):
        passwordChanged.call(password);
        break;
      case _TogglePasswordVisibility():
        togglePasswordVisibility.call();
        break;
      case _ForgotPasswordPressed():
        forgotPasswordPressed.call();
        break;
      case _CreateAccountPressed():
        createAccountPressed.call();
        break;
      case _LoginPressed(:final email, :final password):
        loginPressed.call(email, password);
    }
  }
}

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.goToHome() = _GoToHome;
  const factory LoginEvent.goToForgotPassword() = _GoToForgotPassword;
  const factory LoginEvent.goToRegister() = _GoToRegister;
  const factory LoginEvent.showError(Exception e) = _ShowError;
}

extension LoginEventExt on LoginEvent {
  void when({
    required void Function() goToHome,
    required void Function() goToForgotPassword,
    required void Function() goToRegister,
    required void Function(Exception e) showError,
  }) {
    switch (this) {
      case _GoToHome():
        goToHome.call();
        break;
      case _GoToForgotPassword():
        goToForgotPassword.call();
        break;
      case _GoToRegister():
        goToRegister.call();
        break;
      case _ShowError(:final e):
        showError.call(e);
        break;
    }
  }
}

class LoginState {
  final String appName;
  final String email;
  final ValidationResult emailValidation;
  final String password;
  final bool obscurePassword;
  final AsyncValue<void> loginState;

  const LoginState({
    this.appName = "",
    this.email = "",
    this.emailValidation = const ValidationResult(successful: true),
    this.password = "",
    this.obscurePassword = true,
    this.loginState = const AsyncData(null),
  });

  bool isButtonEnabled() {
    return email.isNotEmpty && password.isNotEmpty;
  }

  LoginState copyWith({
    String? appName,
    String? email,
    ValidationResult? emailValidation,
    String? password,
    bool? obscurePassword,
    AsyncValue<void>? loginState,
  }) {
    return LoginState(
      appName: appName ?? this.appName,
      email: email ?? this.email,
      emailValidation: emailValidation ?? this.emailValidation,
      password: password ?? this.password,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      loginState: loginState ?? this.loginState,
    );
  }

  @override
  String toString() {
    return 'LoginState{appName: $appName, email: $email, emailValidation: $emailValidation, password: $password, obscurePassword: $obscurePassword, loginState: $loginState}';
  }
}
