/*
 * *
 *  * Created by zhoubin on 19-8-9 下午5:30
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_kit_example/base/base_page_state.dart';
import 'package:flutter_kit_example/config/assets.dart';
import 'package:flutter_kit_example/modules/routers/application.dart';
import 'package:flutter_kit_example/modules/routers/routers.dart';
import 'package:flutter_kit_example/utils/flutter_log.dart';

class SamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SamplePageStae();
  }
}

class _SamplePageStae extends BasePageState<SamplePage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  _onClick() {
    FLog.d("进入测试页面");
//    Navigator.push(
//      context,
//      new MaterialPageRoute(builder: (context) => new TestPage()),
//    );
//    Application.navigateTo(context, Routes.testPage);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Container(
        margin: new EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              padding: EdgeInsets.all(10.0),
              child: new Text("测试入口"),
              onPressed: _onClick,
            ),
            RaisedButton(
              padding: EdgeInsets.all(10.0),
              child: new Center(
                  child: new Image.asset(Assets.DEFAULT_IMAGE,
                      height: 180.0, width: 180.0)),
              onPressed: _onClick,
            ),
          ],
        ),
      ),
    );
  }
}
