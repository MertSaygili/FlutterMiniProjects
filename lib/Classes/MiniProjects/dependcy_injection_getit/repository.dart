import 'package:injectable/injectable.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/dependcy_injection_getit/service.dart';

abstract class Repository {
  Future<void> doSomething2();
}

@Injectable(as: Repository)
class RepositoryImplementation implements Repository {
  final Service _service;

  RepositoryImplementation(this._service);

  @override
  Future<void> doSomething2() async {
    await _service.doSomething1();
  }
}
