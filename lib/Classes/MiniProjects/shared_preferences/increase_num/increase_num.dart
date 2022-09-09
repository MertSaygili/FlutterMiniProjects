import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/shared_preferences/increase_num/shared_manager.dart';

class IncreaseNum extends StatefulWidget {
  const IncreaseNum({Key? key}) : super(key: key);

  @override
  State<IncreaseNum> createState() => _IncreaseNumState();
}

class _IncreaseNumState extends State<IncreaseNum> {
  int _counter = 0;
  int _oldCounter = 0;
  late final SharedManager _sharedManager;

  @override
  void initState() {
    super.initState();
    _sharedManager = SharedManager();
    _sharedManager.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('Current counter: $_counter'),
              Text('Old counter: $_oldCounter'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _sharedManager.setInt(SharedKeys.num, _counter);
                    _counter = 0;
                    _oldCounter += _sharedManager.getInt(SharedKeys.num);
                  });
                },
                child: const Icon(Icons.save),
              )
            ],
          )
        ],
      ),
    );
  }
}
