import 'package:flutter/material.dart';
import 'package:flutter_kit_app/config/assets.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class SwitchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchPageState();
  }
}

class _SwitchPageState extends State<SwitchPage> {
  bool _isCheck = false;

  void _changed(isCheck) {
    setState(() {
      _isCheck = isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: ViewUtil.createAppBar(Routes.switchPage),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "普通的Switch",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Switch(
            value: _isCheck,
            onChanged: _changed,
          ),
          Text(
            "自定义 Switch",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Switch(
            //来初始化此 Switch 是否被选中。true 表示选中 ，false 表示不选中
            value: _isCheck,
            //当 拖动改变状态时的回调。
            onChanged: _changed,
            //当 value 是 true 时 滑块的颜色。也就是开的状态时的颜色
            activeColor: Colors.red,
            // 当 value 是 true 时 滑道的颜色
            activeTrackColor: Colors.blueAccent,
            // 当 value 是 true 时 滑块上的图片。 如果 activeColor 也设置了  ， 以 activeThumbImage 为准
            // 如果设置的是网络图片的话。当 滑块 滑到这里 才开始加载。所以 没加载出图片的之前 ，以 activeColor 为准

            activeThumbImage:
                NetworkImage("https://flutterchina.club/images/owl.jpg"),

            // 当 value 是 false 时 滑块的颜色。也就是开的状态时的颜色
            inactiveThumbColor: Colors.amberAccent,
            // 当 value 是 false 时 滑道的颜色
            inactiveTrackColor: Colors.green,
            // 当 value 是 false 时 滑块上的图片。 如果 inactiveThumbColor 也设置了  ， 以 inactiveThumbImage 为准
            inactiveThumbImage: AssetImage(Assets.defaultImage),
          ),
          Text(
            "SwitchListTile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            width: 200,
            child: SwitchListTile(
              // 是否选中 是否打开
              value: _isCheck,
              // 当打开关闭的时候的回调
              onChanged: _changed,
              // 选中时 滑块的颜色
              activeColor: Colors.red,
              // 选中时 滑道的颜色
              activeTrackColor: Colors.black,
              // 选中时 滑块的图片
//              activeThumbImage: AssetImage("images/hashiqi.jpg"),
              // 未选中时 滑块的颜色
              inactiveThumbColor: Colors.green,
              // 未选中时 滑道的颜色
              inactiveTrackColor: Colors.amberAccent,
              // 未选中时 滑块的颜色
              inactiveThumbImage: AssetImage(Assets.defaultImage),
              // 标题
              title: Text("标题"),
              // 副标题 在标题下面的
//              subtitle: Text("副标题"),
              // 是不是三行， true 时： subtitle 不能为null， false时可以为 null
//              isThreeLine: true,
              // 如果为 true ，则 text 和 icon 都用 activeColor 时的color
//              selected: true,
              // 是否垂直密集居中
              dense: true,
              // 左边的一个东西
              secondary: Icon(Icons.access_time),
            ),
          ),
        ],
      ),
    );
  }
}
