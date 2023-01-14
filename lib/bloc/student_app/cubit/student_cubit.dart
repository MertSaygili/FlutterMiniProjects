import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../network/student_repository.dart';
import '../state/student_state.dart';

class StudentCubit extends Cubit<StudentCubitStates> {
  final StudentRepository _studentRepository;
  StudentCubit(this._studentRepository)
      : super(const StudentCubitInitialState());

  Future<void> getStudents() async {
    try {
      emit(const StudentCubitLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      // emit(StudentCubitLoadedState(response));
    } on NetworkError catch (e) {
      emit(StudentCubitErrorState(e.message));
    }
  }
}
