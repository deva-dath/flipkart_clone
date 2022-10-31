import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:timezone/timezone.dart';
import 'package:timezone/data/latest.dart';

class NotificationsIOS {
  // final localNotifications = FlutterLocalNotificationsPlugin();
  static final _notifications = FlutterLocalNotificationsPlugin();

  static Future initializ({bool scheduled = false}) async {
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('');
    DarwinInitializationSettings iosInitializationSettings =
        DarwinInitializationSettings(
            requestAlertPermission: true,
            requestBadgePermission: true,
            requestSoundPermission: true,
            onDidReceiveLocalNotification: _onDidReceiveLocalNotification);
    final settings = InitializationSettings(
        iOS: iosInitializationSettings, android: androidInitializationSettings);
    await _notifications.initialize(settings,
        onDidReceiveBackgroundNotificationResponse:
            _onDidReceiveBackgroundNotificationResponse);
  }

  static notificationDetails() async {
    return NotificationDetails(
        iOS: DarwinNotificationDetails(
      presentSound: true,
      sound: 'bingbong.aiff'
    ));
  }

  static Future showNotification(
          {var id = 234,
          required var title,
          required var body,
          var payload}) async =>
      _notifications.show(id, title, body, await notificationDetails());

  static void _onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) {
    print('id - $id');
  }

  static void _onDidReceiveBackgroundNotificationResponse(
      NotificationResponse details) {}
}
