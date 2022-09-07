import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sheet_component/sheet_with_callback/appbar.dart';

class SheetWithCallBackFun extends StatefulWidget {
  const SheetWithCallBackFun({Key? key}) : super(key: key);

  @override
  State<SheetWithCallBackFun> createState() => _SheetWithCallBackFunState();
}

class _SheetWithCallBackFunState extends State<SheetWithCallBackFun> {
  String _currentText = 'Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'CAP',
        icon: const Icon(Icons.add),
        prefferedSize: 100,
      ),
      body: Center(child: Text(_currentText)),

    );
  }

  
}
