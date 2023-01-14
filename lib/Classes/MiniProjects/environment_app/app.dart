import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv extends StatefulWidget {
  const AppEnv({Key? key}) : super(key: key);

  @override
  State<AppEnv> createState() => _AppEnvState();
}

class _AppEnvState extends State<AppEnv> {
  late final String apiKey;

  @override
  void initState() {
    super.initState();
    apiKey = dotenv.env['API-URL'] ?? 'No URL Key';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(apiKey),
      ),
    );
  }
}
