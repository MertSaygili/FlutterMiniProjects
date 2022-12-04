import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TryStarFlut extends StatefulWidget {
  const TryStarFlut({Key? key}) : super(key: key);

  @override
  State<TryStarFlut> createState() => _TryStarFlutState();
}

class _TryStarFlutState extends State<TryStarFlut> {
  String _greetings = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_greetings)),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final response =
                await http.get(Uri.parse('http://192.168.0.22:5000/'));

            final decoded = json.decode(response.body) as Map<String, dynamic>;
            // print(decoded);

            setState(() {
              _greetings = decoded['greetings'];
            });
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
