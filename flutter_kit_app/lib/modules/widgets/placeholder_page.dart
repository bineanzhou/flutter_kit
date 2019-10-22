
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class Placeholderpage extends StatelessWidget{
  Widget build(BuildContext context) {
    var _name = "flutter ";
    return Scaffold(
      appBar: ViewUtil.createAppBar(Routes.placeholderPage),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Icon(
              Icons.access_alarm,//设置使用哪种图标
              size: 300,//设置图标大小
              color: Colors.yellow,//设置图标颜色
              textDirection:TextDirection.rtl ,//设置用于渲染图标的文本方向
              semanticLabel: "语义标签",//设置用于渲染图标的文本方向
            ),

            Placeholder(
              color: Colors.blue,// 设置占位符颜色 defalutBlue Grey 70
              strokeWidth: 5,//设置画笔宽度
              fallbackHeight: 200,//设置占位符宽度
              fallbackWidth: 200,//设置占位符高度
            ),

            Icon(
              Icons.build,
              size: 300,
              color: Colors.green,
              textDirection:TextDirection.ltr ,
            ),
          ],

        ),
      ),
    );
  }

}