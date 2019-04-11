import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fm_baidu_sdk/fm_baidu_sdk.dart';

void main() {
  const MethodChannel channel = MethodChannel('fm_baidu_sdk');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FmBaiduSdk.platformVersion, '42');
  });
}
