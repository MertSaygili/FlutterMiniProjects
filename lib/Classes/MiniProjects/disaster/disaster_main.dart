import 'package:flutter/material.dart';

class DisasterMainView extends StatefulWidget {
  const DisasterMainView({Key? key}) : super(key: key);

  @override
  State<DisasterMainView> createState() => _DisasterMainViewState();
}

class _DisasterMainViewState extends State<DisasterMainView> {
  List<String> pathes = [
    'assets/disaster/cig.jpeg',
    'assets/disaster/deprem.jpeg',
    'assets/disaster/yangin.jpeg',
    'assets/disaster/sel.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: GridView.builder(
                itemCount: pathes.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Image.asset(
                      pathes[index],
                      fit: BoxFit.cover,
                      height: 250,
                      width: 300,
                    ),
                    subtitle: Text(divide(pathes[index])),
                  );
                },
              ),
            ),
            const Expanded(
              flex: 1,
              child: Text(
                'Simulasyonunu yapmak istediginiz afeti seciniz',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String divide(String path) {
    String temp = path.split('assets/disaster/')[1];
    String temp1 = temp.split('.jpeg')[0].toUpperCase();

    return temp1;
  }
}
