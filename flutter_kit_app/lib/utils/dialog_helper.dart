/*
 * *
 *  * Created by zhoubin on 19-8-12 下午5:05
 *
 */
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/dialog/progress_dialog.dart';
import 'package:flutter_kit_app/utils/flutter_log.dart';


class DialogHelper {
  static Future<void> showAlertDialog(BuildContext context,
      {String title = "标题", String msg = ""}) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text(msg)],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                FLog.d("showAlertDialog$context");
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static Future<void> showAboutDialog(BuildContext context, {String title = "标题", String msg = ""}) {
    return showDialog(
        context: context,
        builder: (BuildContext context) => AboutDialog(
            applicationName: title,
            applicationVersion: 'V1.0',
            children: <Widget>[Text(msg)]));
  }
  static ProgressDialog createProgressDialog(BuildContext context, {String msg = "加载中..."}){
    var progressDialog =  new ProgressDialog(context,ProgressDialogType.Normal);
    progressDialog.setMessage(msg);
    return progressDialog;
  }
}
