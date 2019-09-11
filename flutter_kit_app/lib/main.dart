import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_kit_app/config/theme.dart';
import 'package:flutter_kit_app/modules/home.dart';
import 'package:flutter_kit_app/utils/statusbar_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main(){
  runApp(MyApp());
  StatusBarUtil.setStatusBar();
}

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
        const Duration(seconds: 3),
        () => setState(() {
              _isLoading = false;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: buildWelcomePage()),
      theme: new ThemeData(
        primaryColor: AppTheme.primaryColor,
        backgroundColor: AppTheme.backgroundColor,
        accentColor: AppTheme.accentColor,
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(
              color: AppTextTheme.body1Color, fontSize: AppTextTheme.body1FontSize),
        ),
        iconTheme: IconThemeData(
          color: AppTheme.primaryColor,
          size: 35.0,
        ),
      ),
    );
  }

  buildWelcomePage() {
    if (_isLoading) {
      return Container(
        color: AppTheme.primaryColor,
        child: Center(
          child: SpinKitFadingCube(color: Colors.white),
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
