import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_0/core/database/database_helper.dart';

import 'core/model/song_model.dart';

class DataView extends StatefulWidget {
  const DataView({Key? key}) : super(key: key);

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  var databaseHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    print(databaseHelper.getSongModels());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: FutureBuilder(
          future: databaseHelper.getSongModels(),
          initialData: const [],
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            var data = snapshot.data;
            var dataLength = data!.length;

            return dataLength == 0
                ? const Center(
                    child: Text('No data found'),
                  )
                : ListView.builder(
                    itemCount: dataLength,
                    itemBuilder: (context, index) {
                      return const Text(
                        'merhaba',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
