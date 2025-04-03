// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'thoc_auth_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ThocAuthLocalizationsEn extends ThocAuthLocalizations {
  ThocAuthLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get login_screen_title => 'Login';

  @override
  String get login_screen_forgot_password => 'Forgot password?';

  @override
  String get login_screen_sign_in => 'Sign in';

  @override
  String get login_screen_create_account => 'Create an account';

  @override
  String get email_address => 'Email address';

  @override
  String get password => 'Password';

  @override
  String get repeat_password => 'Repeat password';

  @override
  String get empty_field => 'Field cannot be empty.';

  @override
  String get invalid_email => 'Email is invalid.';

  @override
  String get invalid_password => 'Password is invalid.';

  @override
  String get passwords_do_not_match => 'Passwords do not match.';

  @override
  String login_screen_new_to_app(Object app_name) {
    return 'New to $app_name?';
  }

  @override
  String get forgot_password_screen_title => 'Reset password';

  @override
  String get forgot_password_screen_reset_password_success => 'You\'ll receive an email with instructions on how to reset your password.';

  @override
  String get forgot_password_screen_reset_password => 'Reset password';

  @override
  String get register_screen_title => 'Register';

  @override
  String get register_screen_sign_up => 'Sign up';

  @override
  String get register_screen_password_requirements => 'Your password must be at least 8 characters long and contain at least one special character.';

  @override
  String get first_name => 'First name';

  @override
  String get last_name => 'Last name';
}
