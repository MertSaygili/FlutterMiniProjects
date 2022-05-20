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
                        ImageExpanded(
                            imgAddressNFLetYouDown: imgAddressNFLetYouDown),
                        SongExpanded(
                            songName: songName,
                            singerName: singerName,
                            playButtonText: playButtonText,
                            addToQueueButtonText: addToQueueButtonText),
                      ],
                    ),
                  ],
                ),
              ),
              shape: ShapeSettings().cardShape,
              color: colorAttributes._colorGrayWhite,
              shadowColor: colorAttributes._colorBlack,
              elevation: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class SongExpanded extends StatelessWidget {
  const SongExpanded({
    Key? key,
    required this.songName,
    required this.singerName,
    required this.playButtonText,
    required this.addToQueueButtonText,
  }) : super(key: key);

  final String songName;
  final String singerName;
  final String playButtonText;
  final String addToQueueButtonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          songAndSinger(),
          rowButtons(),
        ],
      ),
    );
  }

  Row rowButtons() {
    return Row(
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
    );
  }

  ListTile songAndSinger() {
    return ListTile(
      title: Text(songName),
      subtitle: Text(singerName),
    );
  }
}

class ImageExpanded extends StatelessWidget {
  const ImageExpanded({
    Key? key,
    required this.imgAddressNFLetYouDown,
  }) : super(key: key);

  final String imgAddressNFLetYouDown;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Image.asset(
        imgAddressNFLetYouDown,
        fit: BoxFit.cover,
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
  final Color _colorGrayWhiteDark = const Color.fromARGB(255, 233, 225, 225);
  final Color _colorBlack = const Color.fromARGB(255, 0, 0, 0);
}

class ShapeSettings {
  final RoundedRectangleBorder cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ShapeAttributes().circularNormal),
    side: BorderSide(color: ColorAttributes()._colorGrayWhiteDark),
  );
}

class ShapeAttributes {
  final double circularNormal = 10;
}
