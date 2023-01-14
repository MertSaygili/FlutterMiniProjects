import '../model/student.dart';

abstract class StudentCubitStates {
  const StudentCubitStates();
}

class StudentCubitInitialState extends StudentCubitStates {
  const StudentCubitInitialState();
}

class StudentCubitLoadingState extends StudentCubitStates {
  const StudentCubitLoadingState();
}

class StudentCubitLoadedState extends StudentCubitStates {
  final List<Student> students;

  const StudentCubitLoadedState(this.students);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StudentCubitLoadedState && other.students == students;
  }

  @override
  int get hashCode => students.hashCode;
}

class StudentCubitErrorState extends StudentCubitStates {
  final String error;

  const StudentCubitErrorState(this.error);
}
