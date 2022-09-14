import 'package:flutter/material.dart';

class BasicTextField extends StatefulWidget {
  const BasicTextField({Key? key}) : super(key: key);

  @override
  State<BasicTextField> createState() => _BasicTextFieldState();
}

class _BasicTextFieldState extends State<BasicTextField> {
  late String _text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _CustomTextField(
          textInputType: TextInputType.text,
          textInputAction: TextInputAction.next,
          labelText: 'ss',
          hintText: 'ss',
          fun: _setInput,
        ),
      ),
    );
  }

  void _setInput(String value) => setState(() => _text = value);
}

class PaddingItems {
  final EdgeInsets paddingTextField = const EdgeInsets.all(5);
}

class _CustomTextField extends StatefulWidget {
  const _CustomTextField({
    Key? key,
    required this.textInputType,
    required this.textInputAction,
    required this.labelText,
    required this.hintText,
    required this.fun,
    this.icon,
  }) : super(key: key);

  final Function fun;
  final Icon? icon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String labelText;
  final String hintText;

  @override
  State<_CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<_CustomTextField> {
  final double _borderRadius = 15;
  final double _gapPadding = 2;
  late String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      autocorrect: true,
      obscureText: false,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        isDense: true,
        suffixIcon: widget.icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
          gapPadding: _gapPadding,
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      onChanged: (value) => setState(() => widget.fun(value)),
    );
  }
}
