import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_huawei_availability/google_huawei_availability.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isGoogle = false;
  bool _isHuawei = false;

  @override
  void initState() {
    super.initState();
    checkService();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> checkService() async {
    bool isGoogle =
        await GoogleHuaweiAvailability.isGoogleServiceAvailable ?? false;
    bool isHuawei =
        await GoogleHuaweiAvailability.isHuaweiServiceAvailable ?? false;

    if (!mounted) return;

    setState(() {
      _isGoogle = isGoogle;
      _isHuawei = isHuawei;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Huawei Service Availability'),
        ),
        body: Center(
          child: Text(
              'Google Play Service Available: $_isGoogle\nHuawei HMS Service Available: $_isHuawei'),
        ),
      ),
    );
  }
}
