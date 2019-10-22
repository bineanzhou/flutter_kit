import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';
import 'package:flutter_kit_app/widgets/marquee_text.dart';

/**
    Created by zhoubin on 2019/10/18.
    https://api.flutter.dev/flutter/widgets/Column-class.html
 **/
class ColumnPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColumnPageState();
  }
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: ViewUtil.createAppBar(Routes.columnPage),
        body: Column(
          children: <Widget>[
            Text('Deliver features faster'),
            Text('Craft beautiful UIs'),
            Text('We move under cover and we move as one'),
            Text('Through the night, we have one shot to live another day'),
            Text('We cannot let a stray gunshot give us away'),
            Text('We will fight up close, seize the moment and stay in it'),
            Text('It’s either that or meet the business end of a bayonet'),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: const FlutterLogo(),
              ),
            ),
            Text('The code word is ‘Rochambeau,’ dig me?'),
            Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),

          ],
        ));
  }
}
