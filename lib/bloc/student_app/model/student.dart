class Student {
  final String? studentId;
  final String? name;
  final String? surname;
  final String? email;
  final String? phone;
  final String? address;

  Student({
    this.studentId,
    this.name,
    this.surname,
    this.email,
    this.phone,
    this.address,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      studentId: json['studentId'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
    );
  }

  static List<Student> fromJsonSnapshot(List snapshot) {
    if (snapshot.isEmpty) {
      return [];
    } else {
      return snapshot.map((item) => Student.fromJson(item)).toList();
    }
  }
}
