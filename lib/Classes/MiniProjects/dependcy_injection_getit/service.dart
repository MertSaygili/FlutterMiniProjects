import 'package:injectable/injectable.dart';

abstract class Service {
  Future<void> doSomething1();
}

@Singleton(as: Service)
class ServiceImplementation implements Service {
  @override
  Future<void> doSomething1() async {
    print('do something');
  }
}
