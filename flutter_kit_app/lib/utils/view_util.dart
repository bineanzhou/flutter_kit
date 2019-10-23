import 'package:flutter/material.dart';
import 'package:flutter_kit_app/widgets/marquee_text.dart';

class ViewUtil {
  static AppBar createAppBar(String title, {List<Widget>  actions, Widget leading}) {
    return AppBar(
      brightness: Brightness.light,
      actions: actions,
      leading: leading,
      title: MarqueeText(
        text: title,
//          text: "dart",
        textStyle: new TextStyle(fontSize: 16.0),
        scrollAxis: Axis.horizontal,
      ),
    );
  }
}
