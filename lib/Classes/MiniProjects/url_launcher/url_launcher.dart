import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatefulWidget {
  const UrlLauncher({Key? key}) : super(key: key);

  @override
  State<UrlLauncher> createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
  final String _appBarTitle = 'Url Launcher Example';
  final String _navigateToTwitter = 'Navigate to Twitter';
  final String _navigateToInstagram = 'Navigate to Instagram';
  final String _navigateToSpotify = 'Navigate to Spotify';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(_appBarTitle))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _customElevatedButton(() async {
              final url = Uri.parse('https://twitter.com/muhunal');

              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.platformDefault);
              }
            }, _navigateToTwitter),
            _customElevatedButton(() async {
              final url = Uri.parse('https://www.instagram.com/mert_ssaygili/');

              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.platformDefault);
              }
            }, _navigateToInstagram),
            _customElevatedButton(() async {
              final url = Uri.parse('https://open.spotify.com/user/murat');

              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.platformDefault);
              }
            }, _navigateToSpotify),
          ],
        ),
      ),
    );
  }

  SizedBox _customElevatedButton(Function fun, String text) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ElevatedButton(
        onPressed: () {
          final result = fun();
          print(result);
        },
        child: Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: Theme.of(context).textTheme.headline6,
          padding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
