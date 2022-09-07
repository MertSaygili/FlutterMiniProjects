import 'package:flutter/material.dart';

class DropdownBasicOne extends StatefulWidget {
  const DropdownBasicOne({Key? key}) : super(key: key);

  @override
  State<DropdownBasicOne> createState() => _DropdownBasicOneState();
}

class _DropdownBasicOneState extends State<DropdownBasicOne> {
  final List<String> _items = [
    'Turkey',
    'America',
    'Russia',
    'Belgium',
    'France',
    'Spain'
  ];
  String _selectedItem = 'Turkey';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton(
          value: _selectedItem,
          items: _items.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedItem = value.toString();
            });
          },
        ),
      ),
    );
  }
}
