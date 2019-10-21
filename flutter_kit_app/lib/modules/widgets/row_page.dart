import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/widgets/marquee_text.dart';

/**
    Created by zhoubin on 2019/10/18.
    https://api.flutter.dev/flutter/widgets/Row-class.html
 **/
class RowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RowPageState();
  }
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          title: MarqueeText(
            text: Routes.rowPage,
//          text: "dart",
            textStyle: new TextStyle(fontSize: 16.0),
            scrollAxis: Axis.horizontal,
          ),
        ),
        body: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text('Deliver features faster',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: const FlutterLogo(),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const FlutterLogo(),
              const Expanded(
                child: Text(
                    'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          )
        ]));
  }
}
