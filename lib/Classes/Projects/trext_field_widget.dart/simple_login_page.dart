import 'package:flutter/material.dart';

class SimpleLoginPage extends StatefulWidget {
  const SimpleLoginPage({Key? key}) : super(key: key);

  @override
  State<SimpleLoginPage> createState() => _SimpleLoginPageState();
}

class _SimpleLoginPageState extends State<SimpleLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems().paddingPage,
        child: Center(
          child: Column(
            children: const [
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
      vertical: PaddingValues().paddingVerticalNormal,
      horizontal: PaddingValues().paddingHorizontalNormal);
}

class PaddingValues {
  final double paddingVerticalNormal = 150;
  final double paddingHorizontalNormal = 10;
}
