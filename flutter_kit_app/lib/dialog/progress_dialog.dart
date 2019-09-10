/*
 * *
 *  * Created by zhoubin on 19-8-12 下午6:17
 *
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _dialogMessage = "Loading...";
enum ProgressDialogType { Normal, Download }

ProgressDialogType _progressDialogType = ProgressDialogType.Normal;
double _progress = 0.0;

bool _isShowing = false;

/// https://github.com/fayaz07/progress_dialog
class ProgressDialog {
  _MyDialog _dialog;

  BuildContext _buildContext, _context;

  ProgressDialog(
      BuildContext buildContext, ProgressDialogType progressDialogtype) {
    _buildContext = buildContext;

    _progressDialogType = progressDialogtype;
  }

  void setMessage(String mess) {
    _dialogMessage = mess;
    debugPrint("ProgressDialog message changed: $mess");
  }

  void update({double progress, String message}) {
    debugPrint("ProgressDialog message changed: ");
    if (_progressDialogType == ProgressDialogType.Download) {
      debugPrint("Old Progress: $_progress, New Progress: $progress");
      _progress = progress;
    }
    debugPrint("Old message: $_dialogMessage, New Message: $message");
    _dialogMessage = message;
    _dialog.update();
  }

  bool isShowing() {
    return _isShowing;
  }

  void hide() {
    if (_context == null) {
      debugPrint('ProgressDialog context is null !!!');
      return;
    }

    if (_isShowing) {
      _isShowing = false;
        Navigator.of(_context).pop();
      debugPrint('ProgressDialog dismissed context:$_context');

    }
  }

  void show() {
    if (!_isShowing) {
      _dialog = new _MyDialog();
      _isShowing = true;
      debugPrint('ProgressDialog shown context:$_buildContext');
      showDialog<dynamic>(
          context: _buildContext,
          barrierDismissible: false,
          builder: (BuildContext context) {
            _context = context;
            return LoadingWidget();
//            return Dialog(
//                insetAnimationCurve: Curves.easeInOut,
//                insetAnimationDuration: Duration(milliseconds: 100),
//                elevation: 10.0,
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                child: _dialog);
          });
    }
  }
}

// ignore: must_be_immutable
class _MyDialog extends StatefulWidget {
  var _dialog = new _MyDialogState();

  update() {
    _dialog.changeState();
  }

  @override
  // ignore: must_be_immutable
  State<StatefulWidget> createState() {
    return _dialog;
  }
}

class _MyDialogState extends State<_MyDialog> {
  changeState() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _isShowing = false;
    debugPrint('ProgressDialog dismissed by back button');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.0,
        child: Row(children: <Widget>[
          const SizedBox(width: 15.0),
          SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              backgroundColor: Colors.red,
            ),
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: _progressDialogType == ProgressDialogType.Normal
                ? Text(_dialogMessage,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700))
                : Stack(
                    children: <Widget>[
                      Positioned(
                        child: Text(_dialogMessage,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w700)),
                        top: 35.0,
                      ),
                      Positioned(
                        child: Text("$_progress/100",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400)),
                        bottom: 15.0,
                        right: 15.0,
                      ),
                    ],
                  ),
          )
        ]));
  }
}

class MessageBox {
  BuildContext buildContext;
  String message = " ", title = " ";

  MessageBox(this.buildContext, this.message, this.title);

  void show() {
    _showDialog();
  }

  Future _showDialog() {
    showDialog(
      context: buildContext,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('$title'),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
          content: SizedBox(
            height: 45.0,
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
          ),
        );
      },
    );
    return null;
  }
}

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    RoundedRectangleBorder _defaultDialogShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)));

    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
          const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Material(
              elevation: 24.0,
//              color: Theme.of(context).dialogBackgroundColor,
              color: Colors.black54,
              type: MaterialType.card,
              //在这里修改成我们想要显示的widget就行了，外部的属性跟其他Dialog保持一致
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: new Text("加载中"),
                  ),
                ],
              ),
              shape: _defaultDialogShape,
            ),
          ),
        ),
      ),
    );
  }
}
