/*
 * *
 *  * Created by wangxueqing on 19-8-21 上午10:14
 *
 */
import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';
class DeviceTool {

  static final DeviceTool _singleton = DeviceTool._internal();
  factory DeviceTool()=> _singleton;
  static DeviceTool getInstance() {
    return _singleton;
  }
  DeviceTool._internal();

  ///是否是Android
  static final bool isAndroid = Platform.isAndroid;
  ///是否是IOS
  static final bool isIOS = (Platform.isIOS);

  AndroidDeviceInfo androidInfo;
  IosDeviceInfo iosInfo;
  String infoOfString;
  String version;

  Future getDevice()
  {
    getDeviceInfo();
    getVersion();
  }
  ///获取设备信息  最早调用的方法
  Future getDeviceInfo() {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    try {
      if (isAndroid) {
        deviceInfo.androidInfo.then((info){
          androidInfo = info;
        });
      } else if (isIOS) {
        deviceInfo.iosInfo.then((info){
          iosInfo = info;
        });
      }
    } on PlatformException {
      print('Failed to get platform version.');
    }

  }
  Future getVersion() async {
    //version
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String vers = packageInfo.version;
    version = vers;
  }

}

var deviceTool = new DeviceTool();
