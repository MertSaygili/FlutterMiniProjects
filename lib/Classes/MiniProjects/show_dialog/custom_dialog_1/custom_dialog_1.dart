import 'package:flutter/material.dart';

class CustomDialogOne extends StatefulWidget {
  const CustomDialogOne({Key? key}) : super(key: key);

  @override
  State<CustomDialogOne> createState() => _CustomDialogOneState();
}

class _CustomDialogOneState extends State<CustomDialogOne> {
  final Icon _iconOpen = const Icon(Icons.open_in_browser);
  final Icon _iconClose = const Icon(Icons.close);
  final RoundedRectangleBorder _shapeDialog = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: const BorderSide(
      style: BorderStyle.solid,
      color: Colors.black,
      width: 1,
    ),
  );
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
                return SimpleDialog(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  titlePadding: EdgeInsets.zero,
                  title: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: _iconClose,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  elevation: 15,
                  shape: _shapeDialog,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: const Text('SSS'),
                        hintText: 'SSS',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          gapPadding: 0,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 5),
                      ),
                    ),
                  ],
                );
              });
        },
        child: _iconOpen,
      ),
    );
  }
}
