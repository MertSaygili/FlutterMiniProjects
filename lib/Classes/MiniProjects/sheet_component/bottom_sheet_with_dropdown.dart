import 'package:flutter/material.dart';

class BottomSheetWithDropDown extends StatefulWidget {
  const BottomSheetWithDropDown({Key? key}) : super(key: key);

  @override
  State<BottomSheetWithDropDown> createState() =>
      _BottomSheetWithDropDownState();
}

class _BottomSheetWithDropDownState extends State<BottomSheetWithDropDown> {
  String _data = 'data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(_data),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.airline_seat_legroom_reduced_outlined),
        onPressed: () async {
          final result = await showModalBottomSheet(
              isDismissible: false,
              context: context,
              builder: (context) {
                return const _CustomSheet();
              });

          print(result);
        },
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  final List<String> _items = [
    'Turkey',
    'America',
    'Russia',
    'Belgium',
    'France',
    'Spain'
  ];
  String _currentItem = 'Turkey';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () => Navigator.of(context).pop<String>('///'),
            icon: const Icon(Icons.select_all),
          ),
        ),
        DropdownButton(
          value: _currentItem,
          onChanged: (value) {
            setState(() {
              print(value);
              _currentItem = value.toString();
            });
          },
          items: _items.map((String val) {
            return DropdownMenuItem(
              value: val,
              child: Text(val),
            );
          }).toList(),
        ),
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop<String>(_currentItem),
            child: const Text('SEND'))
      ],
    );
  }
}
