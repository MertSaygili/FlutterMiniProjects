enum Gender { FEMALE, MALE, OTHER }

enum ProgrammingLanguage { DART, JAVASCRIPT, KOTLIN, SWIFT }

class Settings {
  final String username;
  final Gender gender;
  final bool isEmployed;

  Settings(
      {required this.username, required this.gender, required this.isEmployed});
}
