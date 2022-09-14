import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/show_dialog/custom_dialog_1/items.dart';

class CustomDialogOne extends StatefulWidget {
  const CustomDialogOne({Key? key}) : super(key: key);

  @override
  State<CustomDialogOne> createState() => _CustomDialogOneState();
}

class _CustomDialogOneState extends State<CustomDialogOne> {
  late final PaddingItems _paddings;
  final String _title = 'Custom Dialog 1';

  @override
  void initState() {
    super.initState();
    _paddings = PaddingItems();
  }

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
                return SimpleDialog(
                  contentPadding: _paddings.contentPaddingDialog,
                  titlePadding: _paddings.zeroPadding,
                  title: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: IconItems().iconClose,
                      padding: _paddings.zeroPadding,
                    ),
                  ),
                  elevation: 15,
                  shape: Shapes().borderDialog,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: const Text('SSS'),
                        hintText: 'SSS',
                        border: Shapes().borderTextField,
                        contentPadding: _paddings.textFieldContentPadding,
                      ),
                    ),
                  ],
                );
              });
        },
        child: IconItems().iconOpen,
      ),
    );
  }
}
