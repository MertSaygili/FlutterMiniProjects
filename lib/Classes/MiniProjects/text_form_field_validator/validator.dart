import 'regex.dart';

class Validator {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (!Regex().checkEmail(value)) {
      return 'Please enter a valid email address';
    } else {
      return null;
    }
  }
}
