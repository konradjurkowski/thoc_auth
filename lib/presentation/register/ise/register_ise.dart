import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thoc_core/domain/model/validation_result.dart';

part 'register_ise.freezed.dart';

@freezed
sealed class RegisterIntent with _$RegisterIntent {
  const factory RegisterIntent.backPressed() = _BackPressed;
  const factory RegisterIntent.firstNameChanged(String firstName) = _FirstNameChanged;
  const factory RegisterIntent.lastNameChanged(String lastName) = _LastNameChanged;
  const factory RegisterIntent.emailChanged(String email) = _EmailChanged;
  const factory RegisterIntent.passwordChanged(String password) = _PasswordChanged;
  const factory RegisterIntent.togglePasswordVisibility() = _TogglePasswordVisibility;
  const factory RegisterIntent.repeatedPasswordChanged(String repeatedPassword) = _RepeatedPasswordChanged;
  const factory RegisterIntent.toggleRepeatedPasswordVisibility() = _ToggleRepeatedPasswordVisibility;
  const factory RegisterIntent.registerPressed({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String repeatedPassword,
  }) = _RegisterPressed;
}

extension RegisterIntentExt on RegisterIntent {
  void when({
    required void Function() backPressed,
    required void Function(String firstName) firstNameChanged,
    required void Function(String lastName) lastNameChanged,
    required void Function(String email) emailChanged,
    required void Function(String password) passwordChanged,
    required void Function() togglePasswordVisibility,
    required void Function(String repeatedPassword) repeatedPasswordChanged,
    required void Function() toggleRepeatedPasswordVisibility,
    required void Function(String firstName, String lastName, String email, String password, String repeatedPassword) registerPressed,
  }) {
    switch (this) {
      case _BackPressed():
        backPressed.call();
        break;
      case _FirstNameChanged(:final firstName):
        firstNameChanged.call(firstName);
        break;
      case _LastNameChanged(:final lastName):
        lastNameChanged.call(lastName);
        break;
      case _EmailChanged(:final email):
        emailChanged.call(email);
        break;
      case _PasswordChanged(:final password):
        passwordChanged.call(password);
        break;
      case _TogglePasswordVisibility():
        togglePasswordVisibility.call();
        break;
      case _RepeatedPasswordChanged(:final repeatedPassword):
        repeatedPasswordChanged.call(repeatedPassword);
        break;
      case _ToggleRepeatedPasswordVisibility():
        toggleRepeatedPasswordVisibility.call();
        break;
      case _RegisterPressed(:final firstName, :final lastName, :final email, :final password, :final repeatedPassword):
        registerPressed.call(firstName, lastName, email, password, repeatedPassword);
        break;
    }
  }
}

@freezed
sealed class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.showError(Exception e) = _ShowError;
}

extension RegisterEventExt on RegisterEvent {
  void when({
    required void Function() goToHome,
    required void Function(Exception e) showError,
  }) {
    switch (this) {
      case _ShowError(:final e):
        showError.call(e);
        break;
    }
  }
}

class RegisterState {
  const RegisterState({
    this.firstName = "",
    this.lastName = "",
    this.email = "",
    this.emailValidation = const ValidationResult(successful: true),
    this.password = "",
    this.passwordValidation = const ValidationResult(successful: true),
    this.obscurePassword = true,
    this.repeatedPassword = "",
    this.repeatedPasswordValidation = const ValidationResult(successful: true),
    this.obscureRepeatedPassword = true,
    this.registerState = const AsyncData(null),
  });

  final String firstName;
  final String lastName;
  final String email;
  final ValidationResult emailValidation;
  final String password;
  final ValidationResult passwordValidation;
  final bool obscurePassword;
  final String repeatedPassword;
  final ValidationResult repeatedPasswordValidation;
  final bool obscureRepeatedPassword;
  final AsyncValue<void> registerState;

  bool isButtonEnabled() {
    return firstName.isNotEmpty && lastName.isNotEmpty && email.isNotEmpty && password.isNotEmpty && repeatedPassword.isNotEmpty;
  }

  RegisterState copyWith({
    String? firstName,
    String? lastName,
    String? email,
    ValidationResult? emailValidation,
    String? password,
    ValidationResult? passwordValidation,
    bool? obscurePassword,
    String? repeatedPassword = "",
    ValidationResult? repeatedPasswordValidation,
    bool? obscureRepeatedPassword = true,
    AsyncValue<void>? registerState,
  }) {
    return RegisterState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      emailValidation: emailValidation ?? this.emailValidation,
      password: password ?? this.password,
      passwordValidation: passwordValidation ?? this.passwordValidation,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      repeatedPassword: repeatedPassword ?? this.repeatedPassword,
      repeatedPasswordValidation: repeatedPasswordValidation ?? this.repeatedPasswordValidation,
      obscureRepeatedPassword: obscureRepeatedPassword ?? this.obscureRepeatedPassword,
      registerState: registerState ?? this.registerState,
    );
  }

  @override
  String toString() {
    return 'RegisterState{firstName: $firstName, lastName: $lastName, email: $email, emailValidation: $emailValidation, password: $password, passwordValidation: $passwordValidation, obscurePassword: $obscurePassword, repeatedPassword: $repeatedPassword, repeatedPasswordValidation: $repeatedPasswordValidation, obscureRepeatedPassword: $obscureRepeatedPassword, registerState: $registerState}';
  }
}
