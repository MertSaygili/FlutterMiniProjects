import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/shared_preferences/hold_list/shared_manager.dart';

class PageV extends StatefulWidget {
  const PageV({Key? key}) : super(key: key);

  @override
  State<PageV> createState() => _PageVState();
}

class _PageVState extends State<PageV> {
  late final SharedManager _sharedManager;
  late List<String> _names;
  String _name = '';

  @override
  void initState() {
    _sharedManager = SharedManager();
    _sharedManager.init();
    _names = _sharedManager.getStringList(SharedKeys.names);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            onChanged: (value) => setState(() => _name = value),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView.builder(
                itemCount: _names.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(_names.elementAt(index)),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _names.add(_name);
            _sharedManager.setStringList(SharedKeys.names, _names);
          });
        },
        child: const Icon(Icons.send),
      ),
    );
  }
}
