import 'package:project1_change_appbar_color/bloc/employee_app/model/employee.dart';

abstract class EmployeeStates {
  const EmployeeStates();
}

class EmployeeInitialState extends EmployeeStates {
  const EmployeeInitialState();
}

class EmployeeLoadingState extends EmployeeStates {
  const EmployeeLoadingState();
}

class EmployeeLoadedState extends EmployeeStates {
  final List<Employee> employees;
  const EmployeeLoadedState(this.employees);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmployeeLoadedState && other.employees == employees;
  }

  @override
  int get hashCode => employees.hashCode;
}

class EmployeeErrorState extends EmployeeStates {
  final String error;
  const EmployeeErrorState(this.error);
}
