import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/sample/sample_page.dart';
import 'package:flutter_kit_app/modules/widgets/container_page.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String samplePage = "lib/modules/sample/sample_page";
  static String containerPage = "lib/modules/widgets/container_page.dart";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        // ignore: missing_return
        handlerFunc:
            (BuildContext context, Map<String, List<String>> params) {});

    router.define(samplePage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return SamplePage();
      },
    ));
    router.define(containerPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return ContainerPage();
      },
    ));
  }
}


