import 'dart:async';

import 'package:flutter/services.dart';

class GoogleHuaweiAvailability {
  static const MethodChannel _channel =
      MethodChannel('google_huawei_availability');

  static Future<bool?> get isGoogleServiceAvailable async {
    final bool? service =
        await _channel.invokeMethod('isGoogleServiceAvailable');
    return service;
  }

  static Future<bool?> get isHuaweiServiceAvailable async {
    final bool? service =
        await _channel.invokeMethod('isHuaweiServiceAvailable');
    return service;
  }
}
