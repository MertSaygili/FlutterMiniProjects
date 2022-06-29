import 'package:flutter/material.dart';

class RowModel extends StatefulWidget {
  const RowModel({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<RowModel> createState() => _RowModelState();
}

class _RowModelState extends State<RowModel> {
  late final String _text;
  bool _checkBox = false;
  int check = 0;

  @override
  void initState() {
    super.initState();
    _text = widget.text;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: Checkbox(
            side: const BorderSide(color: Colors.blueAccent),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            value: _checkBox,
            onChanged: (value) {
              setState(() {
                _checkBox = !_checkBox;
              });
            },
          ),
        ),
        Text(_text),
      ],
    );
  }
}
