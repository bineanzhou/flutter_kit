
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/application.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class DrawerPage extends StatelessWidget{
  var _context;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _context = context;
    return Scaffold(
      appBar: _appbar,
      drawer: _drawer,
    );
  }
  get _appbar=>ViewUtil.createAppBar(Routes.drawerPage);
  get _drawer => Drawer(
    ///edit start
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Center(
            child: SizedBox(
              width: 60.0,
              height: 60.0,
              child: CircleAvatar(
                child: Text('R'),
              ),
            ),
          ),
        ),

        ListTile(
          leading: Icon(Icons.settings),
          title: Text('设置'),
        ),
        ListTile(
          leading: Icon(Icons.subtitles),
          title: Text('title2'),
        ),
        ListTile(
          leading: Icon(Icons.subtitles),
          title: Text('title3'),
        ),
        ListTile(
          leading: Icon(Icons.subtitles),
          title: Text('title4'),
        ),
        ListTile(
          leading: Icon(Icons.subtitles),
          title: Text('title5'),
        ),

      ],
    ),
    ///edit end
  );

}