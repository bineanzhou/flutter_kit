import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';


class Application {
  static Router _router;
  static TabController controller;
  static void init(){
    _router = Router();
    Routes.configureRoutes(_router);
  }
  static Router getRouter() {
    return _router;
  }
  static void navigateTo(BuildContext context, String path, {TransitionType transitionType = TransitionType.native}){
    Application._router.navigateTo(context, path, transition: transitionType);
  }
}
