import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_kit/flutter_kit.dart';
import 'package:flutter_kit_example/config/theme_config.dart';
import 'package:flutter_kit_example/modules/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
        () => setState(() {
              _isLoading = false;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: buildWelcomePage()),
      theme: new ThemeData(
        primaryColor: ThemeConfig.primaryColor,
        backgroundColor: ThemeConfig.backgroundColor,
        accentColor: ThemeConfig.accentColor,
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(
              color: TextConfig.body1Color, fontSize: TextConfig.body1FontSize),
        ),
        iconTheme: IconThemeData(
          color: ThemeConfig.primaryColor,
          size: 35.0,
        ),
      ),
    );
  }

  buildWelcomePage() {
    if (_isLoading) {
      return Container(
        color: ThemeConfig.primaryColor,
        child: Center(
          child: SpinKitPouringHourglass(color: Colors.white),
        ),
      );
    } else {
      return HomePage();
      // 判断是否已经登录
//      if (_hasLogin) {
//        return AppPage(_userInfo);
//      } else {
//        return LoginPage();
//      }
    }
  }
}
