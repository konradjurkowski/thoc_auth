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
  String login_screen_new_to_app(String app_name) {
    return 'New to $app_name?';
  }

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
}
