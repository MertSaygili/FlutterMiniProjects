import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum SecureKeys {names}

class SecureStorage {
  final _secureStorage = const FlutterSecureStorage();


  Future<void> writeStringList(SecureKeys key, List<String> names) async{
  }
}
