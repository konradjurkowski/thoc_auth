import 'package:flutter/cupertino.dart';
import 'package:thoc_auth/utils/helpers.dart';
import 'package:thoc_core/domain/model/validation_result.dart';

extension ValidationErrorExt on ValidationError {
  String getText(BuildContext context) {
    switch (this) {
      case ValidationError.EMPTY_FIELD:
        return context.authStrings.empty_field;
      case ValidationError.INVALID_EMAIL:
        return context.authStrings.invalid_email;
      case ValidationError.INVALID_PASSWORD:
        return context.authStrings.invalid_password;
    }
  }
}
