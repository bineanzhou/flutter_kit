import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/widgets/marquee_text.dart';

/**
    Created by zhoubin on 2019/10/18.
    https://api.flutter.dev/flutter/widgets/Container-class.html
 **/
class ContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContainerPageState();
  }
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          title: MarqueeText(
            text: Routes.containerPage,
//          text: "dart",
            textStyle: new TextStyle(fontSize: 16.0),
            scrollAxis: Axis.horizontal,
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 48.0,
              height: 48.0,
            ),
            Container(
              constraints: BoxConstraints.expand(
                height:
                    Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.white)),
              transform: Matrix4.rotationZ(0.1),
            )
          ],
        ));
  }
}
