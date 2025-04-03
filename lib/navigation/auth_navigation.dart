import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AuthNavigation {
  Future<void> navigateBack();
  Future<void> navigateToLogin();
  Future<void> navigateToRegister();
  Future<void> navigateToForgotPassword();
  Future<void> navigateToHome();
}

final authNavigationProvider = Provider<AuthNavigation>(
  (ref) => throw UnimplementedError());
