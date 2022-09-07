import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({Key? key, required this.icon, required this.fun})
      : super(key: key);

  final Icon icon;
  final Function? fun;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.icon,
      onPressed: () {
        widget.fun!();
      },
    );
  }
}
