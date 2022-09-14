import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/show_dialog/custom_dialog_1/custom_simple_dialog.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/show_dialog/custom_dialog_1/items.dart';

class CustomDialogOne extends StatefulWidget {
  const CustomDialogOne({Key? key}) : super(key: key);

  @override
  State<CustomDialogOne> createState() => _CustomDialogOneState();
}

class _CustomDialogOneState extends State<CustomDialogOne> {
  final String _title = 'Custom Dialog 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: true,
              builder: (context) {
                return const CustomSimpleDialog();
              });
        },
        child: IconItems().iconOpen,
      ),
    );
  }
}
