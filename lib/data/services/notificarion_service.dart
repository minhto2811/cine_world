import 'dart:async';
import 'dart:io';

import 'package:cine_world/generated/l10n.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/timezone.dart';

class NotificationService {
  static const _channelId = 'cine_world_notification';
  static const String _channelName = 'Channel Cine World';

  static NotificationDetails get _notificationDetails =>
      const NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          _channelName,
          groupKey: 'mxgk',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(
            threadIdentifier: 'mxgk',
            interruptionLevel: InterruptionLevel.critical,
            categoryIdentifier: 'darwinIdentifier1'),
      );
  static final _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async => await Future.wait([
        _configureLocalTimeZone,
        _flutterLocalNotificationsPlugin.initialize(
          _initializationSettings,
          onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
        )
      ]);

  static Future<void> show(
      {required String title, required String body, int id = 0}) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
    await _flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      _notificationDetails,
    );
  }

  static Future<void> setNotificationDefaults() async => await Future.wait([
        zonedSchedule(
            id: DateTime.wednesday,
            title: S.current.wednesday_notification_title,
            body: '🐾 ${S.current.wednesday_notification_content}',
            matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
            tz: _getNext(DateTime.wednesday)),
        zonedSchedule(
            id: DateTime.saturday,
            title: S.current.saturday_notification_title,
            body: '💡 ${S.current.saturday_notification_content}',
            matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
            tz: _getNext(DateTime.saturday)),
        zonedSchedule(
            id: DateTime.sunday,
            title: S.current.sunday_notification_title,
            body: '🎉 ${S.current.sunday_notification_content}',
            matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
            tz: _getNext(DateTime.sunday)),
      ]);

  static TZDateTime _getNext(int targetWeekday,
      {int hour = 9, int minute = 0}) {
    final TZDateTime now = TZDateTime.now(tz.local);
    int daysUntilWednesday = (targetWeekday - now.weekday) % 7;
    if (daysUntilWednesday <= 0) {
      daysUntilWednesday += 7;
    }
    final nextWednesday = now.add(Duration(days: daysUntilWednesday));
    return TZDateTime(tz.local, nextWednesday.year, nextWednesday.month,
        nextWednesday.day, hour, minute);
  }

  static Future<void> zonedSchedule({
    required int id,
    required String title,
    required String body,
    required DateTimeComponents matchDateTimeComponents,
    required TZDateTime tz,
  }) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
    await _flutterLocalNotificationsPlugin.zonedSchedule(
        id, title, body, tz, _notificationDetails,
        matchDateTimeComponents: matchDateTimeComponents,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle);
  }

  static Future<void> requestPermissions() async {
    if (Platform.isIOS) {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          _flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>();
      await androidImplementation?.requestNotificationsPermission();
    }
  }

  static InitializationSettings get _initializationSettings {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final List<DarwinNotificationCategory> darwinNotificationCategories =
        <DarwinNotificationCategory>[
      DarwinNotificationCategory(
        'darwinIdentifier1',
        actions: <DarwinNotificationAction>[
          DarwinNotificationAction.plain(
            'id_2',
            'Action 2 (destructive)',
            options: <DarwinNotificationActionOption>{
              DarwinNotificationActionOption.destructive,
            },
          ),
          DarwinNotificationAction.plain(
            'darwinIdentifier2',
            'Action 3 (foreground)',
            options: <DarwinNotificationActionOption>{
              DarwinNotificationActionOption.foreground,
            },
          ),
        ],
      )
    ];
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      notificationCategories: darwinNotificationCategories,
    );

    return InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );
  }

  static Future<void> cancelAll() async =>
      await _flutterLocalNotificationsPlugin.cancelAll();

  static Future<void> cancel(int id) async =>
      await _flutterLocalNotificationsPlugin.cancel(id);

  static Future<void> get _configureLocalTimeZone async {
    tz.initializeTimeZones();
    final String timeZoneName = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }
}

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
// ignore: avoid_print
  print('notification(${notificationResponse.id}) action tapped: '
      '${notificationResponse.actionId} with'
      ' payload: ${notificationResponse.payload}');
  if (notificationResponse.input?.isNotEmpty ?? false) {
// ignore: avoid_print
    print(
        'notification action tapped with input: ${notificationResponse.input}');
  }
}
