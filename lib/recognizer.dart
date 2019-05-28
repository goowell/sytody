import 'dart:async';

import 'package:flutter/services.dart';

const MethodChannel _speechChannel =
    const MethodChannel("bz.rxla.flutter/recognizer");

class SpeechRecognizer {
  static void setMethodCallHandler(handler) {
    _speechChannel.setMethodCallHandler(handler);
  }

  static Future activate() {
    return _speechChannel.invokeMethod("activate");
  }

  static Future start(String lang) {
    return _speechChannel.invokeMethod("start", lang);
  }

  static Future cancel() {
    return _speechChannel.invokeMethod("cancel");
  }

  static Future stop() {
    return _speechChannel.invokeMethod("stop");
  }
}
