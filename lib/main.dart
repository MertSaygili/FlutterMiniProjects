import 'package:flutter/material.dart';
import 'bloc/product_app/view/show_products.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: '/',
      // onGenerateRoute: RouterManager.generateRoute,
      theme: ThemeData.dark(),
      home: const ShowProductsPage(),
    );
  }
}
