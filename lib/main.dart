import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/text_file/read_write.dart';
import 'package:project1_change_appbar_color/Classes/Projects/text_file/read_write_to_file.dart';
import 'Uplabs/login_panels/login_2/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme().theme,
      home: ReadWriteToFile(storage: CounterStorage()),
    );
  }
}
