import 'package:email_validator/email_validator.dart';

String? emailValidator(String? value) {
  if (value!.isEmpty) {
    return 'Please enter your email address';
  } else if (!EmailValidator.validate(value)) {
    return 'Please enter a valid email address';
  }
  return null; //
}