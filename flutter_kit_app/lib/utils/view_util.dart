import 'package:flutter/material.dart';
import 'package:flutter_kit_app/widgets/marquee_text.dart';

class ViewUtil {
  static AppBar createAppBar(String title) {
    return AppBar(
      brightness: Brightness.light,
      title: MarqueeText(
        text: title,
//          text: "dart",
        textStyle: new TextStyle(fontSize: 16.0),
        scrollAxis: Axis.horizontal,
      ),
    );
  }
}
