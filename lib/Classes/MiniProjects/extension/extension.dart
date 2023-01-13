extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String toLowerCase() {
    return this.toLowerCase();
  }

  String toUpperCase() {
    return this.toUpperCase();
  }

  String trim() {
    return this.trim();
  }

  String trimLeft() {
    return this.trimLeft();
  }
}
