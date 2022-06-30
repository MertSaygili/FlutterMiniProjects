import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BasicNavigation extends StatefulWidget {
  const BasicNavigation({Key? key}) : super(key: key);

  @override
  State<BasicNavigation> createState() => _BasicNavigationState();
}

class _BasicNavigationState extends State<BasicNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
