import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  final String titleAppBar = 'Designing spotify with list view builder';
  List<String> lSingers = [
    'Davie Bowie',
    'Chris Isaac',
    'Frank Sinatra',
    'Gloria Gaynor',
  ];
  List<String> LSongs = [
    'Heroes',
    'Wicked Game',
    'My Way',
    'I Will Survive',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(titleAppBar)),
      ),
      body: ListView.builder(
        itemCount: lSingers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: PaddingItems().paddingScreen,
            child: Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset('assets/img/_shape-on-you.jpg'),
                    ),
                    Expanded(
                      flex: 4,
                      child: ListTile(
                        title: Text(LSongs[index]),
                        subtitle: Text(lSingers[index]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PaddingValues {
  final double paddingScreenHorizontal = 10;
  final double paddingScreenVertical = 6;
}

class PaddingItems {
  EdgeInsets paddingScreen = EdgeInsets.symmetric(
      vertical: PaddingValues().paddingScreenVertical,
      horizontal: PaddingValues().paddingScreenHorizontal);
}
