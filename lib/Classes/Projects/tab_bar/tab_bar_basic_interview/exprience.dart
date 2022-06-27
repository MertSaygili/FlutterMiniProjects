import 'package:flutter/material.dart';

class ExperienceView extends StatefulWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  State<ExperienceView> createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  final String _bodyTitle = "How many years of experience you have?";

  bool _checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            _bodyTitle,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              Transform.scale(
                scale: 1.3,
                child: Checkbox(
                  side: const BorderSide(color: Colors.blueAccent),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  value: _checkBox,
                  onChanged: (value) {
                    setState(() {
                      _checkBox = !_checkBox;
                    });
                  },
                ),
              ),
              const Text('Seven year'),
            ],
          )
        ],
      ),
    );
  }
}
