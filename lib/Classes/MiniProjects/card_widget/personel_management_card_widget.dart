import 'package:flutter/material.dart';

class PersonelManagementCardWidget extends StatelessWidget {
  PersonelManagementCardWidget({Key? key}) : super(key: key);
  final Personels personel = Personels();
  final String appBarTitle = "Design of Personel Card Widget";
  final String personelImg = "assets/img/me.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(appBarTitle)),
      ),
      body: Padding(
        padding: PaddingSettings().paddingCard,
        child: Column(
          children: [
            CardExample(
              personelTitle: personel.personelNames[0],
              personelSubTitle: personel.personelDepartmens[0],
              icon: AllIcons().iconAccountCircle,
            ),
            CardExample(
              personelTitle: personel.personelNames[1],
              personelSubTitle: personel.personelDepartmens[1],
              icon: AllIcons().iconAccountCircle,
            ),
            CardExample(
              personelTitle: personel.personelNames[2],
              personelSubTitle: personel.personelDepartmens[2],
              icon: AllIcons().iconAccountCircle,
            ),
          ],
        ),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({
    Key? key,
    required this.personelTitle,
    required this.personelSubTitle,
    required this.icon,
  }) : super(key: key);

  final String personelTitle;
  final String personelSubTitle;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: PaddingSettings().paddingPage,
        child: ListTileProperties(
          personelTitle: personelTitle,
          personelSubTitle: personelSubTitle,
          icon: icon,
        ),
      ),
      elevation: 13,
      shape: Shapes().roundedShapeForCard,
    );
  }
}

class ListTileProperties extends StatelessWidget {
  const ListTileProperties({
    Key? key,
    required this.personelTitle,
    required this.personelSubTitle,
    required this.icon,
  }) : super(key: key);

  final Icon icon;
  final String personelTitle;
  final String personelSubTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(personelTitle),
      subtitle: Text(personelSubTitle),
    );
  }
}

class Shapes {
  final RoundedRectangleBorder roundedShapeForCard = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: BorderSide(color: ColorSettings().colorBlue),
  );
}

class ColorSettings {
  final Color colorBlue = const Color.fromARGB(255, 197, 224, 247);
}

class AllIcons {
  final Icon iconAccountCircle =
      const Icon(Icons.account_circle_rounded, size: 50);
}

class PaddingSettings {
  final EdgeInsets paddingPage =
      const EdgeInsets.symmetric(vertical: 15, horizontal: 8);
  final EdgeInsets paddingCard =
      const EdgeInsets.symmetric(vertical: 8, horizontal: 6);
}

class Personels {
  List<String> personelNames = [
    "Mert Inan Saygili",
    "Isa Eray Aslaol",
    "Alperen Yilmaz"
  ];
  List<String> personelDepartmens = [
    "Computer Engineering",
    "Electrical Engineering",
    "Civil Engineering"
  ];
}
