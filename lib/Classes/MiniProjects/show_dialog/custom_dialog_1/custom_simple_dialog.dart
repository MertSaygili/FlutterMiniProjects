import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/show_dialog/custom_dialog_1/items.dart';

import 'custom_textfield.dart';

class CustomSimpleDialog extends StatefulWidget {
  const CustomSimpleDialog({Key? key}) : super(key: key);

  @override
  State<CustomSimpleDialog> createState() => _CustomSimpleDialogState();
}

class _CustomSimpleDialogState extends State<CustomSimpleDialog> {
  late final PaddingItems _paddings;
  final double _elevation = 15;
  final String _alarmName = 'Alarm ismi';

  @override
  void initState() {
    super.initState();
    _paddings = PaddingItems();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: _paddings.contentPaddingDialog,
      titlePadding: _paddings.zeroPadding,
      title: _StackTitle(paddings: _paddings),
      elevation: _elevation,
      shape: Shapes().borderDialog,
      children: [
        CustomTextField(hintText: _alarmName, labelText: _alarmName),
      ],
    );
  }
}

class _StackTitle extends StatelessWidget {
  const _StackTitle({
    Key? key,
    required PaddingItems paddings,
  })  : _paddings = paddings,
        super(key: key);

  final PaddingItems _paddings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Stack(
        children: [
          Divider(
            color: Colors.black,
            indent: MediaQuery.of(context).size.width * 0.05,
            endIndent: MediaQuery.of(context).size.width * 0.15,
            thickness: 2,
          ),
          Positioned(
            top: -3,
            right: 0,
            height: 10,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: IconItems().iconClose,
              padding: _paddings.zeroPadding,
            ),
          ),
        ],
      ),
    );
  }
}
