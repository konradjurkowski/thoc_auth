import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thoc_core/domain/model/validation_result.dart';

part 'forgot_password_ise.freezed.dart';

@freezed
sealed class ForgotPasswordIntent with _$ForgotPasswordIntent {
  const factory ForgotPasswordIntent.backPressed() = _BackPressed;
  const factory ForgotPasswordIntent.emailChanged(String email) = _EmailChanged;
  const factory ForgotPasswordIntent.resetPasswordPressed(String email) = _ResetPasswordPressed;
}

extension ForgotPasswordExt on ForgotPasswordIntent {
  void when({
    required void Function() backPressed,
    required void Function(String email) emailChanged,
    required void Function(String email) resetPasswordPressed,
  }) {
    switch (this) {
      case _BackPressed():
        backPressed.call();
        break;
      case _EmailChanged(:final email):
        emailChanged.call(email);
        break;
      case _ResetPasswordPressed(:final email):
        resetPasswordPressed.call(email);
        break;
    }
  }
}

@freezed
sealed class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.showError(Exception e) = _ShowError;
  const factory ForgotPasswordEvent.showSuccess() = _ShowSuccess;
}

extension ForgotPasswordEventExt on ForgotPasswordEvent {
  void when({
    required void Function(Exception e) showError,
    required void Function() showSuccess,
  }) {
    switch (this) {
      case _ShowError(:final e):
        showError.call(e);
        break;
      case _ShowSuccess():
        showSuccess.call();
        break;
    }
  }
}

class ForgotPasswordState {
  const ForgotPasswordState({
    this.email = "",
    this.emailValidation = const ValidationResult(successful: true),
    this.resetState = const AsyncData(null),
  });

  final String email;
  final ValidationResult emailValidation;
  final AsyncValue<void> resetState;

  bool isButtonEnabled() => email.isNotEmpty;

  ForgotPasswordState copyWith({
    String? email,
    ValidationResult? emailValidation,
    AsyncValue<void>? resetState,
  }) {
    return ForgotPasswordState(
      email: email ?? this.email,
      emailValidation: emailValidation ?? this.emailValidation,
      resetState: resetState ?? this.resetState,
    );
  }

  @override
  String toString() {
    return 'ForgotPasswordState{email: $email, emailValidation: $emailValidation, resetState: $resetState}';
  }
}
