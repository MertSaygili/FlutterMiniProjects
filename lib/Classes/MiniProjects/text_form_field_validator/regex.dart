class Regex {
  final String _emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  bool checkEmail(String value) {
    RegExp regex = RegExp(_emailPattern);

    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }
}
