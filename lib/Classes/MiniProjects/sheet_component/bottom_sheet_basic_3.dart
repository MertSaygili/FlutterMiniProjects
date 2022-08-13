// ignore_for_file: avoid_print, constant_identifier_names

import 'package:flutter/material.dart';

class BottomSheetBasicThird extends StatefulWidget {
  const BottomSheetBasicThird({Key? key}) : super(key: key);

  @override
  State<BottomSheetBasicThird> createState() => _BottomSheetBasicThirdState();
}

enum ListTileTitles { Photo, Music, Video, Share }

class _BottomSheetBasicThirdState extends State<BottomSheetBasicThird> {
  final String _title = 'Modal Bottom Sheet';
  final String _buttonText = 'Click me';
  final String _bodyText = 'Modal Bottom Sheet Example';
  final List<Icon> _icons = const [
    Icon(Icons.photo),
    Icon(Icons.music_note_sharp),
    Icon(Icons.video_camera_front),
    Icon(Icons.share),
  ];

  final List<String> _titles = ['Photo', 'Music', 'Video', 'Share'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_bodyText),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: ListTileTitles.values.length,
                        itemBuilder: (BuildContext context, index) {
                          return _customCard(index, context);
                        },
                      );
                    });
              },
              child: Text(_buttonText)),
        ],
      )),
    );
  }

  Card _customCard(int index, BuildContext context) {
    return Card(
      elevation: 10,
      color: const Color.fromARGB(255, 238, 237, 237),
      child: ListTile(
        leading: _icons.elementAt(index),
        title: Text(
          _titles.elementAt(index),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        onTap: () {
          Navigator.of(context).pop();
          print('You have clicked to ${_titles.elementAt(index)}');
        },
      ),
    );
  }
}
