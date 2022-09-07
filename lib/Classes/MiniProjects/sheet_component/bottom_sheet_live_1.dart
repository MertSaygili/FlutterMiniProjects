import 'package:flutter/material.dart';

class BottomSheetLiveOne extends StatefulWidget {
  const BottomSheetLiveOne({Key? key}) : super(key: key);

  @override
  State<BottomSheetLiveOne> createState() => _BottomSheetLiveOneState();
}

class _BottomSheetLiveOneState extends State<BottomSheetLiveOne> {
  final String _title = 'Bottom Sheet Example';
  final String _click = 'Click';
  final List<String> _list = ['One', 'Two', 'Three', 'Four', 'Five'];

  final double _fontSizeButton = 24;
  final double _fontSizeText = 16;
  final double _elevation = 15;
  final double _borderRadius = 15;

  final EdgeInsets _paddingTop = const EdgeInsets.only(top: 20);

  String _data = 'Empty';

  @override
  Widget build(BuildContext context) {
    String currentElement = _list.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 55,
              width: 100,
              child: ElevatedButton(
                  onPressed: () async {
                    final result = await showModalBottomSheet(
                        context: context,
                        elevation: _elevation,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(_borderRadius),
                          ),
                        ),
                        isDismissible: false,
                        builder: (context) {
                          return const _CustomSheet();
                        });
                    setState(() {
                      _data = result;
                    });
                    print(result);
                  },
                  child: Text(
                    _click,
                    style: TextStyle(fontSize: _fontSizeButton),
                  )),
            ),
            Padding(
              padding: _paddingTop,
              child: Text(
                _data,
                style: TextStyle(fontSize: _fontSizeText),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({Key? key}) : super(key: key);

  @override
  State<_CustomSheet> createState() => __CustomSheetState();
}

class __CustomSheetState extends State<_CustomSheet> {
  final String _textSendData = 'Send data';
  final List<String> _list = ['One', 'Two', 'Three', 'Four', 'Five'];
  String _text = '';

  @override
  Widget build(BuildContext context) {
    String currentElement = _list.first;

    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop<String>('Empty'),
            ),
          ),
          TextField(onChanged: (value) => _text = value),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop<String>(_text);
            },
            child: Text(_textSendData),
          ),

        ],
      ),
    );
  }
}
