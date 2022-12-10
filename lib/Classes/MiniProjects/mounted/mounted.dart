import 'package:flutter/material.dart';

class MountedDart extends StatefulWidget {
  const MountedDart({Key? key}) : super(key: key);

  @override
  State<MountedDart> createState() => _MountedDartState();
}

class _MountedDartState extends State<MountedDart> {
  final String _title = 'MOUNTED APP';
  late int _num = 1;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 1000; i++) {
      if (!mounted) {
        print('has not been mounted yet $i');
        setState(() {
          _num = 4;
        });
      }
    }
    if (mounted) {
      print('has been mounted ');
      setState(() {
        _num = 3;
      });
    } else {
      print('has not been mounted');
      setState(() {
        _num = 2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(_title))),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(child: Text('merhaba canim $_num')),
          );
        }),
      ),
    );
  }
}
