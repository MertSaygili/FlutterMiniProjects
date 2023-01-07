import 'package:flutter/material.dart';

class CustomBottomModalSheet extends StatefulWidget {
  const CustomBottomModalSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomModalSheet> createState() => _CustomBottomModalSheetState();
}

class _CustomBottomModalSheetState extends State<CustomBottomModalSheet> {
  final Icon _icon = const Icon(Icons.send);
  String _countryName = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(onChanged: (tempText) => _updateText(tempText)),
            FloatingActionButton(
              onPressed: () => Navigator.of(context).pop<String>(_countryName),
              child: _icon,
            )
          ],
        ),
      ),
    );
  }

  void _updateText(String tempText) {
    setState(() => _countryName = tempText);
  }
}
