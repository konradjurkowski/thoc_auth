import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_iss.freezed.dart';

@freezed
sealed class LoginIntent with _$LoginIntent {
  const factory LoginIntent.emailChanged(String email) = _EmailChanged;
  const factory LoginIntent.passwordChanged(String password) = _PasswordChanged;
  const factory LoginIntent.togglePasswordVisibility() = _TogglePasswordVisibility;
  const factory LoginIntent.forgotPasswordPressed() = _ForgotPasswordPressed;
  const factory LoginIntent.createAccountPressed() = _CreateAccountPressed;
  const factory LoginIntent.loginPressed({
    required String email,
    required String password,
  }) = _LoginPressed;
}

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.goToHome() = _GoToHome;
  const factory LoginEvent.goToForgotPassword() = _GoToForgotPassword;
  const factory LoginEvent.goToRegister() = _GoToRegister;
  const factory LoginEvent.showError(Exception e) = _ShowError;
}

class LoginState {
  final bool obscurePassword;
  final AsyncValue<void> loginState;

  const LoginState({
    this.obscurePassword = true,
    this.loginState = const AsyncData(null),
  });
}
