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
  late List<String> _countries;
  late String _appBarTitle;

  final Icon _iconAdd = const Icon(Icons.add);
  final Icon _iconRemove = const Icon(Icons.remove_circle);
  final Icon _iconSave = const Icon(Icons.save);

  @override
  void initState() {
    super.initState();
    _setSharedManager();
    _appBarTitle = _sharedManager.getString(SharedKeys.title);
  }

  void _setSharedManager() {
    _sharedManager = SharedManager();
    _sharedManager.init();
    _countries = _sharedManager.getStringList(SharedKeys.cities);
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

                final List<String> tempList = _countries;
                tempList.add(result);
                _sharedManager.setStringList(SharedKeys.cities, tempList);

                setState(() {
                  // _appBarTitle = _sharedManager.getString(SharedKeys.title);
                  _countries = _sharedManager.getStringList(SharedKeys.cities);
                });
              })
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView.builder(
            itemCount: _countries.length,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                  title: Text(_countries[index]),
                  onTap: () async {
                    final result = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Are you sure to remove city?'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop<bool>(false);
                                },
                                child: _iconSave,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop<bool>(true);
                                },
                                child: _iconRemove,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ],
                          );
                        });
                    if (result) {
                      setState(() {
                        _countries.remove(_countries[index]);
                      });
                    }
                  },
                ),
              );
            })),
      ),
    );
  }
}
