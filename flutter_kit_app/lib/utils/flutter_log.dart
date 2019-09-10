import 'package:flutter/foundation.dart';


class FLog {
  static const String _TAG = "FlutterLog";

  static const bool _debug = !bool.fromEnvironment("dart.vm.product");


  static void p(Object message, {Object tag = _TAG}) {
    if (_debug) {
      print("$tag:$message");
    }
  }


  static void d(Object message, {Object tag = _TAG}) {
    if (_debug) {
      debugPrint("$tag:$message");
    }
  }
}
