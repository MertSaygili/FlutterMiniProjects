import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_0/core/model/song_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  Database? _database;

  final int _version = 1;
  final String _tableName = 'song';

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
    await db.execute('''
    CREATE TABLE song (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      songName TEXT,
      singer TEXT,
      publishYear INTEGER,
      hasCopyright INTEGER
    )
    ''');
  }

  Future<List<SongModel>> getSongModels() async {
    final db = await database;

    List<Map<String, dynamic>> items = await db.query(
      _tableName,
      orderBy: 'id DESC',
    );

    return List.generate(
      items.length,
      (i) => SongModel(
        id: items[i]['id'],
        songName: items[i]['songName'],
        singer: items[i]['singer'],
        publishYear: items[i]['publishYear'],
        hasCopyright: items[i]['hasCopyright'] == 1 ? true : false,
      ),
    );
  }

  Future<void> insert(SongModel songModel) async {
    final db = await database;

    db.insert(
      _tableName,
      songModel.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> delete(SongModel songModel) async {
    final db = await database;

    db.delete(
      _tableName,
      where: 'id == ?',
      whereArgs: [songModel.id],
    );
  }

  Future<void> update(SongModel songModel) async {
    final db = await database;

    db.update(
      _tableName,
      songModel.toMap(),
      where: 'id == ?',
      whereArgs: [songModel.id],
    );
  }

  void closeDb() {
    _database!.close();
  }
}
