import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class DesingningCardWidget extends StatelessWidget {
  DesingningCardWidget({Key? key}) : super(key: key);
  ColorAttributes colorAttributes = ColorAttributes();
  final String imgAddressNFLetYouDown = "assets/img/_shape-on-you.jpg";
  final String _appBarTitle = "Designing Card Widget";
  final String songName = "Shape On You";
  final String singerName = "Ed Sheeran";
  final String playButtonText = "PLAY";
  final String addToQueueButtonText = "ADD TO QUEUE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_appBarTitle)),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Padding(
        padding: PaddingItems().paddingPageNormal,
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: PaddingItems().paddingPageNormal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.asset(
                            imgAddressNFLetYouDown,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(songName),
                                subtitle: Text(singerName),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(playButtonText),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(addToQueueButtonText),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              color: colorAttributes._colorGrayWhite,
              shape: const RoundedRectangleBorder(),
              shadowColor: colorAttributes._colorBlack,
              elevation: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class PaddingItems {
  final EdgeInsets paddingPageNormal = EdgeInsets.symmetric(
      vertical: PaddingAttributes()._verticalSmall,
      horizontal: PaddingAttributes()._horizontalSmall);
}

class PaddingAttributes {
  final double _verticalSmall = 4;
  final double _horizontalSmall = 10;
}

class ColorAttributes {
  final Color _colorGrayWhite = const Color.fromARGB(235, 250, 245, 245);
  final Color _colorBlack = const Color.fromARGB(255, 0, 0, 0);
  final Color _colorGreen = Colors.green;
  final Color _colorYellow = Colors.yellow;
  final Color _colorRed = Colors.red;
}
