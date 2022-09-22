import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_0/core/database/database_helper.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
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
                      return GestureDetector(
                        onTap: () async {
                          final result = await showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title:
                                      const Text('Do you want to delete it?'),
                                  actions: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop<bool>(true);
                                        },
                                        icon: const Icon(Icons.remove))
                                  ],
                                );
                              });

                          if (result) {
                            databaseHelper.delete(null, data[index].id);
                            setState(() {});
                          }
                        },
                        child: ListTile(
                          title: Text('${data[index].songName}'),
                          subtitle: Text('${data[index].singer}'),
                          trailing: Text('${data[index].publishYear}'),
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
