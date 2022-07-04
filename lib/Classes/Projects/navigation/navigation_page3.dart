import 'package:flutter/material.dart';

class NavigationPageThree extends StatefulWidget {
  final String userName;
  final String userLastName;
  const NavigationPageThree(
      {Key? key, required this.userName, required this.userLastName})
      : super(key: key);

  @override
  State<NavigationPageThree> createState() => _NavigationPageThreeState();
}

class _NavigationPageThreeState extends State<NavigationPageThree> {
  final String titleAppBar = 'Page 3';
  late final String? _userName;
  late final String? _userLastName;

  @override
  void initState() {
    super.initState();
    _userName = widget.userName;
    _userLastName = widget.userLastName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppBar),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('$_userName $_userLastName'),
        ),
      ),
    );
  }
}
