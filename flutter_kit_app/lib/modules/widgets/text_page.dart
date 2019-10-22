
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class TextPage extends StatelessWidget{
  var _name = "flutter";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: ViewUtil.createAppBar(Routes.textPage),
      body: Column(
        children: <Widget>[
          Text(
            'Hello, $_name! How are you?',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
    );
  }

}