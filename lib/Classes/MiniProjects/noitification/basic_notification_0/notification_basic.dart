import 'package:flutter/material.dart';
import 'local_notification_service.dart';

class NotificationBasicApp extends StatefulWidget {
  const NotificationBasicApp({Key? key}) : super(key: key);

  @override
  State<NotificationBasicApp> createState() => _NotificationBasicAppState();
}

class _NotificationBasicAppState extends State<NotificationBasicApp> {
  final String _title = 'Notification Basic';
  final String _sendNotification = 'Send a notification';

  late final LocalNotificationService _localNotificationService;

  @override
  void initState() {
    _localNotificationService = LocalNotificationService();
    _localNotificationService.intialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _localNotificationService.showNotification(
              id: 0,
              title: 'Deneme title',
              body: 'Deneme body',
            );
          },
          child: Text(_sendNotification),
        ),
      ),
    );
  }
}
