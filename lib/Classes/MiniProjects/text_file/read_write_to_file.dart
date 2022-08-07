import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/text_file/read_write.dart';

class ReadWriteToFile extends StatefulWidget {
  const ReadWriteToFile({Key? key, required this.storage}) : super(key: key);

  final CounterStorage storage;

  @override
  State<ReadWriteToFile> createState() => _ReadWriteToFileState();
}

class _ReadWriteToFileState extends State<ReadWriteToFile> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    widget.storage.readCounter().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });

    // Write the variable as a string to the file.
    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading and Writing Files'),
      ),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
