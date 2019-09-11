/*
 * *
 *  * Created by zhoubin on 19-9-11 上午11:52
 *
 */
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarUtil {
  static double getStatusBarHeight(BuildContext context) {
    if (context == null) return 0;
    return MediaQuery.of(context).padding.top;
  }

  /*
  * @Desc  :这是设置状态栏的图标和字体的颜色
  * Brightness.light  一般都是显示为白色
  * Brightness.dark 一般都是显示为黑色
  * @params: 
  * @return: 
  */
  static void setStatusBar(
      {Color statusBarColor = Colors.transparent,
      Brightness statusBarIconBrightness = Brightness.dark}) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: statusBarIconBrightness);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}
