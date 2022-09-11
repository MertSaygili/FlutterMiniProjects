import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/shared_preferences/list_view/custom_bottom_model_sheet.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/shared_preferences/list_view/shared_manager.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sheet_component/sheet_with_callback/icon_button.dart';

class MPageView extends StatefulWidget {
  const MPageView({Key? key}) : super(key: key);

  @override
  State<MPageView> createState() => _MPageViewState();
}

class _MPageViewState extends State<MPageView> {
  late final SharedManager _sharedManager;
  late List<String> _times;
  late String _appBarTitle;

  final Icon _iconAdd = const Icon(Icons.add);

  // List<String> _countries = ['MERT'];

  @override
  void initState() {
    super.initState();
    _setSharedManager();
    _appBarTitle = _sharedManager.getString(SharedKeys.title);
  }

  void _setSharedManager() {
    _sharedManager = SharedManager();
    _sharedManager.init();
    // _sharedManager.setStringList(SharedKeys.cities, _countries);
    // _countries = _sharedManager.getStringList(SharedKeys.cities);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        centerTitle: true,
        actions: [
          CustomIconButton(
              icon: _iconAdd,
              fun: () async {
                final result = await showModalBottomSheet(
                    useRootNavigator: false,
                    isScrollControlled: false,
                    context: context,
                    builder: (context) {
                      return const CustomBottomModalSheet();
                    });

                _sharedManager.setString(SharedKeys.title, result);

                setState(() {
                  _appBarTitle = _sharedManager.getString(SharedKeys.title);
                });
              })
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView.builder(
            itemCount: 25,
            itemBuilder: ((context, index) {
              return const Card(
                child: ListTile(
                  title: Text('s'),
                ),
              );
            })),
      ),
    );
  }
}
