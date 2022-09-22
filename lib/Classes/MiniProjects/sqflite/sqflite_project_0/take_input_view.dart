import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_0/core/database/database_helper.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_0/core/model/song_model.dart';
import 'package:sqflite/sqflite.dart';

class TakeInputPage extends StatefulWidget {
  const TakeInputPage({Key? key}) : super(key: key);

  @override
  State<TakeInputPage> createState() => _TakeInputPageState();
}

class _TakeInputPageState extends State<TakeInputPage> {
  late String _songName;
  late String _singer;
  late int _publishYear;
  late bool _hasCopyright;

  DatabaseHelper db = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: _buildWrap()),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SongModel songModel = SongModel(
            songName: _songName,
            singer: _singer,
            publishYear: _publishYear,
            hasCopyright: _hasCopyright,
          );

          print(await db.getSongModels());
        },
      ),
    );
  }

  Wrap _buildWrap() {
    return Wrap(
      runSpacing: 20,
      children: [
        TextField(
          onChanged: ((value) {
            setState(() {
              _songName = value;
            });
          }),
          decoration: _inputDecoration('song name'),
        ),
        TextField(
          onChanged: ((value) {
            setState(() {
              _singer = value;
            });
          }),
          decoration: _inputDecoration('singer name'),
        ),
        TextField(
          onChanged: ((value) {
            setState(() {
              _publishYear = int.tryParse(value) ?? 2000;
            });
          }),
          decoration: _inputDecoration('publish year'),
        ),
        TextField(
          onChanged: ((value) {
            setState(() {
              if (value.compareTo('true') == 0) {
                _hasCopyright = true;
              } else {
                _hasCopyright = false;
              }
            });
          }),
          decoration: _inputDecoration('has copyright'),
        ),
      ],
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      border: const OutlineInputBorder(),
    );
  }
}
