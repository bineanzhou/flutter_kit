import 'package:flutter/material.dart';
import 'package:flutter_kit_app/config/theme.dart';
import 'package:flutter_kit_app/modules/sample/sample_page.dart';
import 'package:flutter_kit_app/modules/widgets/widgets_page.dart';
import 'package:flutter_kit_app/utils/flutter_log.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  static const String _TAG = "HomePageState";
  int _selectedIndex = 0;
  List<Widget> _list = List();

  static List _tabData = [
    {'text': 'Widget', 'icon': Icon(Icons.widgets)},
    {'text': 'Examples', 'icon': Icon(Icons.featured_play_list)},
  ];

  String appBarTitle = _tabData[0]['text'];
  List<BottomNavigationBarItem> _myTabs = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      appBarTitle = _tabData[index]['text'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < _tabData.length; i++) {
      _myTabs.add(BottomNavigationBarItem(
        icon: _tabData[i]['icon'],
        title: Text(
          _tabData[i]['text'],
        ),
      ));
    }

    _list..add(WidgetsPage())..add(SamplePage());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FLog.d("build", tag: _TAG);

    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _list,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _myTabs,
        //高亮  被点击高亮
        currentIndex: _selectedIndex,
        //修改 页面
        onTap: _onItemTapped,
        //shifting :按钮点击移动效果
        //fixed：固定
        type: BottomNavigationBarType.fixed,

        fixedColor: AppTheme.primaryColor,
      ),
    );
  }
}
