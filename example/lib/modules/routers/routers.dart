import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kit_example/modules/sample/sample_page.dart';


class Routes {
  static String root = "/";
  static String home = "/home";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        // ignore: missing_return
        handlerFunc:
            (BuildContext context, Map<String, List<String>> params) {});

    router.define(home, handler: sampleHandler);

  }

}

// app的首页
var sampleHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SamplePage();
  },
);