import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_kit_app/config/theme.dart';
import 'package:flutter_kit_app/utils/flutter_log.dart';

class MarqueeText extends StatefulWidget {
  final String text;
  final TextStyle textStyle;

  ///滚动方向，水平或者垂直
  final Axis scrollAxis;

  ///空白部分占控件的百分比
  final double ratioOfBlankToScreen;

  MarqueeText({
    @required this.text,
    this.textStyle,
    this.scrollAxis: Axis.horizontal,
    this.ratioOfBlankToScreen: 0.25,
  }) : assert(
          text != null,
        );

  @override
  State<StatefulWidget> createState() {
    return new MarqueeTextState();
  }
}

class MarqueeTextState extends State<MarqueeText>
    with SingleTickerProviderStateMixin {
  ScrollController scroController;
  double screenWidth;
  double screenHeight;
  double position = 0.0;
  Timer timer;
  final double _moveDistance = 3.0;
  final int _timerRest = 100;
  GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    scroController = new ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      startTimer();
    });
  }

  void startTimer() {
    double widgetWidth =
        _key.currentContext.findRenderObject().paintBounds.size.width;
    double widgetHeight =
        _key.currentContext.findRenderObject().paintBounds.size.height;
    double maxScrollExtent = scroController.position.maxScrollExtent;
    double pixels = scroController.position.pixels;

    FLog.d(
        "widgetWidth:$widgetWidth, screenWidth:$screenWidth maxScrollExtent:$maxScrollExtent pixels:$pixels");
//    if (maxScrollExtent <= widgetWidth) {
//      return;
//    }
    timer = Timer.periodic(new Duration(milliseconds: _timerRest), (timer) {
      if (pixels + _moveDistance >= maxScrollExtent) {
        if (widget.scrollAxis == Axis.horizontal) {
          position = (maxScrollExtent -
                      screenWidth * widget.ratioOfBlankToScreen +
                      widgetWidth) /
                  2 -
              widgetWidth +
              pixels -
              maxScrollExtent;
        } else {
          position = (maxScrollExtent -
                      screenHeight * widget.ratioOfBlankToScreen +
                      widgetHeight) /
                  2 -
              widgetHeight +
              pixels -
              maxScrollExtent;
        }
        scroController.jumpTo(position);
      }
      position += _moveDistance;
      scroController.animateTo(position,
          duration: new Duration(milliseconds: _timerRest),
          curve: Curves.linear);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    FLog.d("didChangeDependencies ");
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  Widget _getTextChild() {
    if (widget.scrollAxis == Axis.vertical) {
      String newString = widget.text.split("").join("\n");
      return new Center(
        child: new Text(
          newString,
          style: widget.textStyle,
          textAlign: TextAlign.center,
        ),
      );
    }
    return new Center(
        child: Container(
      child: Text(
        widget.text,
        style: widget.textStyle,
      ),
//      color: AppTheme.accentColor,
    ));
  }

  Widget getCenterChild() {
    if (widget.scrollAxis == Axis.horizontal) {
      return new Container(width: screenWidth * widget.ratioOfBlankToScreen);
    } else {
      return new Container(height: screenHeight * widget.ratioOfBlankToScreen);
    }
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var textChild = _getTextChild();
    FLog.d("build ");
    var listView = new ListView(
      key: _key,
      scrollDirection: widget.scrollAxis,
      controller: scroController,
      physics: new NeverScrollableScrollPhysics(),
      children: <Widget>[
        textChild,
        getCenterChild(),
        textChild,
      ],
    );
    return listView;
  }
}
