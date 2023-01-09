import 'package:flutter/material.dart';
import 'regex.dart';
import 'shared_manager.dart';

class SharedManagerPageView extends StatefulWidget {
  const SharedManagerPageView({Key? key}) : super(key: key);

  @override
  State<SharedManagerPageView> createState() => _SharedManagerPageViewState();
}

class _SharedManagerPageViewState extends State<SharedManagerPageView> {
  late final SharedManager _manager;
  final String _title = 'Shared Manager Example';
  final String _labelText = 'Enter your email:';
  final String _labelErrorText = 'Your email not valid';
  String _currentValue = '';
  String _oldestValue = '';

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _initialze();
  }

  Future<void> _initialze() async {
    await _manager.init();
    _getDefaultValues();
  }

  Future<void> _getDefaultValues() async {
    _onChangeValue(_manager.getString(SharedKeys.email) ?? '');
  }

  void _onChangeValue(String value) {
    setState(() {
      _oldestValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title), centerTitle: true),
      body: ListView(
        children: [
          TextFormField(
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
            validator: _validatorEmail,
            decoration: InputDecoration(labelText: _labelText),
          ),
          Text('Oldest Value: $_oldestValue'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _manager.saveString(SharedKeys.email, _currentValue);
          print('Saved: $_currentValue');
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  String? _validatorEmail(value) {
    if (value == null || Regex().isEmailValid(value)) {
      return _labelErrorText;
    }
    return null;
  }
}
