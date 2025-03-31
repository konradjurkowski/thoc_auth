import 'package:flutter/material.dart';
import 'package:thoc_auth/res/gen/thoc_auth_localizations.dart';

extension BuildContextExtension on BuildContext {
  ThocAuthLocalizations get authStrings => ThocAuthLocalizations.of(this);
}
