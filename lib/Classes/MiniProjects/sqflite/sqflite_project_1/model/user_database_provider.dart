// ignore_for_file: unnecessary_null_comparison

import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_1/model/user_model.dart';
import 'package:sqflite/sqflite.dart';

class UserDatabaseProvider {
  static Database? database;
  final String _userDatabaseName = 'userDatabase';
  final String _userTableName = 'user';
  final int _version = 1;

  String columnId = 'id';
  String columnUserName = 'userName';
  String columnAge = 'Age';
  String columnIsMarried = 'isMarried';

  void open() async {
    database = await openDatabase(
      _userDatabaseName,
      version: _version,
      onCreate: ((db, version) => createUserTable(db)),
    );
  }

  void createUserTable(Database db) {
    db.execute(
      '''CREATE TABLE $_userTableName (
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $columnUserName VARCHAR(20),
            $columnAge INTEGER,
            $columnIsMarried BOOLEAN)
      ''',
    );
  }

  Future<List<UserModel>> getList() async {
    final userMaps = await database!.query(_userTableName);
    return userMaps.map((e) => UserModel.fromJson(e)).toList();
  }

  Future<UserModel?> getItem(int id) async {
    final userMaps = await database!.query(
      _userTableName,
      columns: [columnId],
      where: '$columnId = ?',
    );

    if (userMaps.isNotEmpty) {
      return UserModel.fromJson(userMaps.first);
    } else {
      return null;
    }
  }

  Future<bool> insert(UserModel userModel) async {
    final userMaps = await database!.insert(_userTableName, userModel.toJson());

    return userMaps != null;
  }

  Future<bool> delete(int id) async {
    final userMaps = await database!
        .delete(_userTableName, where: '$columnId = ?', whereArgs: [id]);

    return userMaps != null;
  }

  Future<bool> update(UserModel userModel, int id) async {
    final userMaps = await database!.update(
      _userTableName,
      userModel.toJson(),
      where: '$columnId = ?',
      whereArgs: [id],
    );

    return userMaps != null;
  }

  Future<void> close() async {
    await database!.close();
  }
}
