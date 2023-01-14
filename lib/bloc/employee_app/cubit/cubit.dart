import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/bloc/employee_app/const/dummy_list.dart';
import '../states/employee_states.dart';

class EmployeeCubit extends Cubit<EmployeeStates> {
  EmployeeCubit() : super(const EmployeeInitialState());

  Future<void> getEmployees() async {
    try {
      emit(const EmployeeLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      emit(EmployeeLoadedState(DummyList().list));
    } catch (e) {
      emit(EmployeeErrorState(e.toString()));
    }
  }
}
