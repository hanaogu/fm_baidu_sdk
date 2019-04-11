import 'dart:async';

import 'package:flutter/services.dart';

class FmBaiduSdk {
  static const MethodChannel _channel =
      const MethodChannel('fm_baidu_sdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
