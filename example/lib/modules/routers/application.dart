import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';


class Application {
  static Router router;
  static TabController controller;
  static void navigateTo(BuildContext context, String path, {TransitionType transitionType = TransitionType.native}){
    Application.router.navigateTo(context, path, transition: transitionType);
  }
}
