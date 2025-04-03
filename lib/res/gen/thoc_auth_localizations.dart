import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'thoc_auth_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ThocAuthLocalizations
/// returned by `ThocAuthLocalizations.of(context)`.
///
/// Applications need to include `ThocAuthLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/thoc_auth_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ThocAuthLocalizations.localizationsDelegates,
///   supportedLocales: ThocAuthLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the ThocAuthLocalizations.supportedLocales
/// property.
abstract class ThocAuthLocalizations {
  ThocAuthLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ThocAuthLocalizations of(BuildContext context) {
    return Localizations.of<ThocAuthLocalizations>(context, ThocAuthLocalizations)!;
  }

  static const LocalizationsDelegate<ThocAuthLocalizations> delegate = _ThocAuthLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @login_screen_title.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login_screen_title;

  /// No description provided for @login_screen_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get login_screen_forgot_password;

  /// No description provided for @login_screen_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get login_screen_sign_in;

  /// No description provided for @login_screen_create_account.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get login_screen_create_account;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get email_address;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @repeat_password.
  ///
  /// In en, this message translates to:
  /// **'Repeat password'**
  String get repeat_password;

  /// No description provided for @empty_field.
  ///
  /// In en, this message translates to:
  /// **'Field cannot be empty.'**
  String get empty_field;

  /// No description provided for @invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid.'**
  String get invalid_email;

  /// No description provided for @invalid_password.
  ///
  /// In en, this message translates to:
  /// **'Password is invalid.'**
  String get invalid_password;

  /// No description provided for @passwords_do_not_match.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match.'**
  String get passwords_do_not_match;

  /// No description provided for @login_screen_new_to_app.
  ///
  /// In en, this message translates to:
  /// **'New to {app_name}?'**
  String login_screen_new_to_app(Object app_name);

  /// No description provided for @forgot_password_screen_title.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get forgot_password_screen_title;

  /// No description provided for @forgot_password_screen_reset_password_success.
  ///
  /// In en, this message translates to:
  /// **'You\'ll receive an email with instructions on how to reset your password.'**
  String get forgot_password_screen_reset_password_success;

  /// No description provided for @forgot_password_screen_reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get forgot_password_screen_reset_password;

  /// No description provided for @register_screen_title.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register_screen_title;

  /// No description provided for @register_screen_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get register_screen_sign_up;

  /// No description provided for @register_screen_password_requirements.
  ///
  /// In en, this message translates to:
  /// **'Your password must be at least 8 characters long and contain at least one special character.'**
  String get register_screen_password_requirements;
}

class _ThocAuthLocalizationsDelegate extends LocalizationsDelegate<ThocAuthLocalizations> {
  const _ThocAuthLocalizationsDelegate();

  @override
  Future<ThocAuthLocalizations> load(Locale locale) {
    return SynchronousFuture<ThocAuthLocalizations>(lookupThocAuthLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_ThocAuthLocalizationsDelegate old) => false;
}

ThocAuthLocalizations lookupThocAuthLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return ThocAuthLocalizationsEn();
  }

  throw FlutterError(
    'ThocAuthLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
