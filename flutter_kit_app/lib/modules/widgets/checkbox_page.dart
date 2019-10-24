import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class CheckboxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckboxPageState();
  }
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: ViewUtil.createAppBar(Routes.checkboxPage),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Padding(padding: EdgeInsets.all(10.0),),
        Text("Checkbox",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Checkbox(
          value: this.check,
          onChanged: (bool val) {
            // val 是布尔值
            this.setState(() {
              this.check = !this.check;
            });
          },
        ),
        Text("CheckboxListTile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        CheckboxListTile(
          secondary: const Icon(Icons.shutter_speed),
          title: const Text('硬件加速'),
          value: this.check,
          onChanged: (bool value) {
            setState(() {
              this.check = !this.check;
            });
          },
        ),
      ]),
    );
  }
}
