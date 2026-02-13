import 'package:booking/app/constants/app_strings.dart';

class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.emailEmptyError;
    }
    // Basic email validation regex
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return AppStrings.emailInvalidError;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.passwordEmptyError;
    }
    if (value.length < 8) {
      return AppStrings.passwordLengthError;
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return AppStrings.passwordUppercaseError;
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return AppStrings.passwordLowercaseError;
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return AppStrings.passwordNumberError;
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return AppStrings.passwordSpecialCharError;
    }
    return null;
  }

  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Please enter your $fieldName';
    }
    return null;
  }
}
