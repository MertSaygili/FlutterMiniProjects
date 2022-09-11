import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({Key? key, required this.fun, required this.icon})
      : super(key: key);

  final Function fun;
  final Icon icon;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        widget.fun();
      },
      icon: widget.icon,
    );
  }
}
