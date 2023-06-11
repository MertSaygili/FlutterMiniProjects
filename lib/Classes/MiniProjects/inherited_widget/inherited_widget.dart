import 'package:flutter/material.dart';

import '../../../main.dart';

class MainAppDataProvider extends InheritedWidget {
  final MainAppData mainAppData;
  final Widget child;
  const MainAppDataProvider({required this.mainAppData, required this.child, Key? key}) : super(key: key, child: child);

  static MainAppDataProvider? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<MainAppDataProvider>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class MainAppData {
  int incrementCount;
  Color appColor;
  MainAppData({required this.incrementCount, required this.appColor});

  void incrementCounter() {
    incrementCount++;
  }

  void changeAppColor(Color newAppColor) {
    appColor = newAppColor;
  }

  void main() {
    runApp(MainAppDataProvider(mainAppData: MainAppData(incrementCount: 5, appColor: Colors.black), child: MyApp()));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MainAppDataProvider? appDataProvider = MainAppDataProvider.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: appDataProvider?.mainAppData.appColor,
          child: Center(
            child: Column(
              children: [
                Text(
                  appDataProvider!.mainAppData.incrementCount.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        appDataProvider.mainAppData.incrementCounter();
                      });
                    },
                    child: Text('Increment')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        appDataProvider.mainAppData.changeAppColor(Colors.purple);
                      });
                    },
                    child: Text('Change Color'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
