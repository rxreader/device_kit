import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class Device {
  const Device._();

  static const MethodChannel _channel =
      MethodChannel('v7lin.github.io/device_kit');

  static Future<String> getDeviceId() {
    assert(Platform.isAndroid);
    return _channel.invokeMethod<String>('getDeviceId');
  }

  static Future<String> getMac() {
    assert(Platform.isAndroid);
    return _channel.invokeMethod<String>('getMac');
  }

  static Future<bool> isCharging() {
    return _channel.invokeMethod<bool>('isCharging');
  }

  static Future<bool> isSimMounted() {
    return _channel.invokeMethod<bool>('isSimMounted');
  }

  static Future<bool> isVPNOn() {
    return _channel.invokeMethod<bool>('isVPNOn');
  }
}
