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
      // appBar: CustomAppBar(
      //   title: 'CAP',
      //   icon: const Icon(Icons.add),
      //   prefferedSize: 100,
      //   fun: bottomSheet,
      // ),
      body: Center(child: Text(_currentText)),
    );
  }

  changeText(String val) {
    setState(() {
      _currentText = val;
    });
  }

  bottomSheet() async {
    final result = await showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) {
        return const CustomSheet();
      },
    );
    changeText(result);
  }
}

class CustomSheet extends StatefulWidget {
  const CustomSheet({Key? key}) : super(key: key);

  @override
  State<CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<CustomSheet> {
  String _data = 'Data';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () => Navigator.of(context).pop<String>(' '),
            icon: const Icon(Icons.cancel),
          ),
        ),
        CustomDropButton(fun: _changeText),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(_data),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop<String>(_data);
              },
              child: const Text('send data')),
        )
      ],
    );
  }

  void _changeText(String data) {
    setState(() {
      _data = data;
    });
  }
}

class CustomDropButton extends StatefulWidget {
  const CustomDropButton({Key? key, required this.fun}) : super(key: key);

  final Function fun;

  @override
  State<CustomDropButton> createState() => _CustomDropButtonState();
}

class _CustomDropButtonState extends State<CustomDropButton> {
  final List<String> _items = ['Turkey', 'America', 'Russia', 'Belgium', 'France', 'Spain'];
  String _currentItem = 'Turkey';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _currentItem,
      items: _items.map((String val) {
        return DropdownMenuItem(
          value: val,
          child: Text(val),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _currentItem = value.toString();
          widget.fun(_currentItem);
        });
      },
    );
  }
}
