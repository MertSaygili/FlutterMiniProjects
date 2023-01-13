import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/extension/extension.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/extension/enum_extension.dart';

class ExtensionAppView extends StatefulWidget {
  const ExtensionAppView({Key? key}) : super(key: key);

  @override
  State<ExtensionAppView> createState() => _ExtensionAppViewState();
}

class _ExtensionAppViewState extends State<ExtensionAppView> {
  final String _appBarTitle = 'Extension';
  late String _animalName;

  @override
  void initState() {
    super.initState();
    _animalName = Animal.dog.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitle), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('extension'.capitalize()),
            Text('extension'.toLowerCase()),
            Text('extension'.toUpperCase()),
            Text('   extension'.trim()),
            Text('extension   K'.trimLeft()),
            Text(
              'extension'
                  .capitalize()
                  .toLowerCase()
                  .toUpperCase()
                  .trim()
                  .trimLeft(),
            ),
            Text(_animalName),
          ],
        ),
      ),
    );
  }
}
