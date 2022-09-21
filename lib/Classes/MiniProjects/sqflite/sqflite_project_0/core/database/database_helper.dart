import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  Database? _database;

  final int _version = 1;

  Future<Database> get database async {
    final dbPath = await getDatabasesPath();
    const dbName = 'song.db';

    final path = join(dbPath, dbName);

    _database = await openDatabase(
      path,
      version: _version,
      onCreate: _createDB,
    );

    return _database!;
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute(''' ''');
  }
}
