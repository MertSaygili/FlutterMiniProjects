class Regex {
  bool isEmailValid(String text) {
    // email regex function
    bool validationResult = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(text);

    return validationResult;
  }
}
