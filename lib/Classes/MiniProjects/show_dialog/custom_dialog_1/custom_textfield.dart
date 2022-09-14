import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/show_dialog/custom_dialog_1/items.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  final String hintText;
  final String labelText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final int _length = 21;
  final double _radius = 15;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      obscureText: false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        border: Shapes().borderTextField,
        contentPadding: PaddingItems().contentPaddingDialog,
      ),
      onChanged: (value) {},
    );
  }
}
