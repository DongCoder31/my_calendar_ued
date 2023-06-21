// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `MY CALENDAR`
  String get name_app {
    return Intl.message(
      'MY CALENDAR',
      name: 'name_app',
      desc: '',
      args: [],
    );
  }

  /// `ACTUALLT YOURS`
  String get title_introd1 {
    return Intl.message(
      'ACTUALLT YOURS',
      name: 'title_introd1',
      desc: '',
      args: [],
    );
  }

  /// `Personalised, science-\nbacked care for`
  String get title_introd2_1_1 {
    return Intl.message(
      'Personalised, science-\nbacked care for',
      name: 'title_introd2_1_1',
      desc: '',
      args: [],
    );
  }

  /// `PCOS&\nThyroid`
  String get title_introd2_1_2 {
    return Intl.message(
      'PCOS&\nThyroid',
      name: 'title_introd2_1_2',
      desc: '',
      args: [],
    );
  }

  /// `Navigating weight gain, period issues,hair loss or fertility concerns can be overwhelmingly hard.`
  String get descr_introd2_1 {
    return Intl.message(
      'Navigating weight gain, period issues,hair loss or fertility concerns can be overwhelmingly hard.',
      name: 'descr_introd2_1',
      desc: '',
      args: [],
    );
  }

  /// `we gai it`
  String get descr_introd2_2 {
    return Intl.message(
      'we gai it',
      name: 'descr_introd2_2',
      desc: '',
      args: [],
    );
  }

  /// `An app that cares`
  String get title_introd3_1 {
    return Intl.message(
      'An app that cares',
      name: 'title_introd3_1',
      desc: '',
      args: [],
    );
  }

  /// `Manage your weight with ecpert guidance`
  String get descr_introd3_1 {
    return Intl.message(
      'Manage your weight with ecpert guidance',
      name: 'descr_introd3_1',
      desc: '',
      args: [],
    );
  }

  /// `Train live with the best coaches& instuctors`
  String get descr_introd3_2 {
    return Intl.message(
      'Train live with the best coaches& instuctors',
      name: 'descr_introd3_2',
      desc: '',
      args: [],
    );
  }

  /// `Ger medical advice from India top PCOS, Thyroid & Fertility Experts`
  String get descr_introd3_3 {
    return Intl.message(
      'Ger medical advice from India top PCOS, Thyroid & Fertility Experts',
      name: 'descr_introd3_3',
      desc: '',
      args: [],
    );
  }

  /// `Track your periods & other symptoms`
  String get descr_introd3_4 {
    return Intl.message(
      'Track your periods & other symptoms',
      name: 'descr_introd3_4',
      desc: '',
      args: [],
    );
  }

  /// `Comfortably get lab tests from your home`
  String get descr_introd3_5 {
    return Intl.message(
      'Comfortably get lab tests from your home',
      name: 'descr_introd3_5',
      desc: '',
      args: [],
    );
  }

  /// `My Days - Default User`
  String get title_home {
    return Intl.message(
      'My Days - Default User',
      name: 'title_home',
      desc: '',
      args: [],
    );
  }

  /// `Hi {name}`
  String hi(Object name) {
    return Intl.message(
      'Hi $name',
      name: 'hi',
      desc: '',
      args: [name],
    );
  }

  /// `Enter PIN`
  String get enter_pin {
    return Intl.message(
      'Enter PIN',
      name: 'enter_pin',
      desc: '',
      args: [],
    );
  }

  /// `forget? tap here`
  String get forget_tap_here {
    return Intl.message(
      'forget? tap here',
      name: 'forget_tap_here',
      desc: '',
      args: [],
    );
  }

  /// `Message error lost connect`
  String get message_error_lost_connect {
    return Intl.message(
      'Message error lost connect',
      name: 'message_error_lost_connect',
      desc: '',
      args: [],
    );
  }

  /// `Message error processfailed`
  String get message_error_process_failed {
    return Intl.message(
      'Message error processfailed',
      name: 'message_error_process_failed',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get create_account {
    return Intl.message(
      'Create account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn_Btn {
    return Intl.message(
      'Sign in',
      name: 'signIn_Btn',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signUp_Btn {
    return Intl.message(
      'Sign in',
      name: 'signUp_Btn',
      desc: '',
      args: [],
    );
  }

  /// `Sign In with Google`
  String get sign_in_with_Google {
    return Intl.message(
      'Sign In with Google',
      name: 'sign_in_with_Google',
      desc: '',
      args: [],
    );
  }

  /// `Sign In with Facebook`
  String get sign_in_with_Facebook {
    return Intl.message(
      'Sign In with Facebook',
      name: 'sign_in_with_Facebook',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Create an`
  String get register_title {
    return Intl.message(
      'Create an',
      name: 'register_title',
      desc: '',
      args: [],
    );
  }

  /// `account`
  String get register_title2 {
    return Intl.message(
      'account',
      name: 'register_title2',
      desc: '',
      args: [],
    );
  }

  /// `to access all the features`
  String get register_title3 {
    return Intl.message(
      'to access all the features',
      name: 'register_title3',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get register_note {
    return Intl.message(
      'Already have an account?',
      name: 'register_note',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get register_login {
    return Intl.message(
      'Login',
      name: 'register_login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get register_email {
    return Intl.message(
      'Email',
      name: 'register_email',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get register_name {
    return Intl.message(
      'Your Name',
      name: 'register_name',
      desc: '',
      args: [],
    );
  }

  /// `Your Passworld`
  String get register_passworld {
    return Intl.message(
      'Your Passworld',
      name: 'register_passworld',
      desc: '',
      args: [],
    );
  }

  /// `We have sent an email to your email \naccount with a verification code!`
  String get register_code_title {
    return Intl.message(
      'We have sent an email to your email \naccount with a verification code!',
      name: 'register_code_title',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get register_code {
    return Intl.message(
      'Verification Code',
      name: 'register_code',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Name is valid`
  String get nameIsValid {
    return Intl.message(
      'Name is valid',
      name: 'nameIsValid',
      desc: '',
      args: [],
    );
  }

  /// `Email is valid`
  String get emailIsValid {
    return Intl.message(
      'Email is valid',
      name: 'emailIsValid',
      desc: '',
      args: [],
    );
  }

  /// `Password is valid`
  String get passwordIsValid {
    return Intl.message(
      'Password is valid',
      name: 'passwordIsValid',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password is valid`
  String get confirmPasswordIsValid {
    return Intl.message(
      'Confirm Password is valid',
      name: 'confirmPasswordIsValid',
      desc: '',
      args: [],
    );
  }

  /// `{name} field`
  String snackBarFailed(Object name) {
    return Intl.message(
      '$name field',
      name: 'snackBarFailed',
      desc: '',
      args: [name],
    );
  }

  /// `{name} Successfully`
  String snackBarSuccessfully(Object name) {
    return Intl.message(
      '$name Successfully',
      name: 'snackBarSuccessfully',
      desc: '',
      args: [name],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
