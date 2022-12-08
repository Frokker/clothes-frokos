import 'dart:io';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:clothes_app/app.dart';
import 'dart:async';

Future<void> main() async {
  if (Platform.isAndroid) {
    await AndroidAlarmManager.initialize();
  }
  runApp(App());
}
