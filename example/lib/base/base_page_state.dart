/*
 * *
 *  * Created by zhoubin on 19-8-16 上午10:12
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_kit_example/dialog/progress_dialog.dart';
import 'package:flutter_kit_example/utils/dialog_helper.dart';

abstract class BasePageState<T extends StatefulWidget> extends State {
  ProgressDialog _dialog;

  void showProgressDialog(){
    if (_dialog == null) {
//        _dialog = DialogHelper.createProgressDialog(context, msg: "加载中");
      _dialog = DialogHelper.createProgressDialog(context, msg: "加载中");
    }
    _dialog.show();
  }
  void hideProgressDialog(){
    _dialog?.hide();
  }
}
