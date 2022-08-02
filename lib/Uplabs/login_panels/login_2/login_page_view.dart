import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String _imageNameMorningPath = 'assets/img/morning.jpg';
  final String _imageNameNightPath = 'assets/img/night2.jpg';

  late String _currentImagePath;

  @override
  void initState() {
    super.initState();
    _currentImagePath = _imageNameMorningPath;
  }

  void _changeToBackgroundMode() {
    setState(() {
      if (_currentImagePath.compareTo(_imageNameMorningPath) == 0) {
        _currentImagePath = _imageNameNightPath;
      } else {
        _currentImagePath = _imageNameMorningPath;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_currentImagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              _changeToBackgroundMode();
            },
            child: const Text('change'),
          ),
        ),
      ),
    );
  }
}
