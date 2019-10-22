import 'package:flutter/material.dart';
import 'package:flutter_kit_app/widgets/marquee_text.dart';

class ViewUtil {
  static AppBar createAppBar(String title, {List<Widget>  actions}) {
    return AppBar(
      brightness: Brightness.light,
      actions: actions,
      title: MarqueeText(
        text: title,
//          text: "dart",
        textStyle: new TextStyle(fontSize: 16.0),
        scrollAxis: Axis.horizontal,
      ),
    );
  }
}
