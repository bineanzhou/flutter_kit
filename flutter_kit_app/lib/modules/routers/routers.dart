import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/sample/sample_page.dart';
import 'package:flutter_kit_app/modules/widgets/column_page.dart';
import 'package:flutter_kit_app/modules/widgets/container_page.dart';
import 'package:flutter_kit_app/modules/widgets/image_page.dart';
import 'package:flutter_kit_app/modules/widgets/row_page.dart';
import 'package:flutter_kit_app/modules/widgets/text_page.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String samplePage = "lib/modules/sample/sample_page";
  static String containerPage = "lib/modules/widgets/container_page.dart";
  static String rowPage = "lib/modules/widgets/row_page.dart";
  static String columnPage = "lib/modules/widgets/column_page.dart";
  static String imagePage = "lib/modules/widgets/image_page.dart";
  static String textPage = "lib/modules/widgets/text_page.dart";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        // ignore: missing_return
        handlerFunc:
            (BuildContext context, Map<String, List<String>> params) {});

    router.define(textPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return TextPage();
      },
    )); router.define(imagePage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return ImagePage();
      },
    ));

    router.define(columnPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return ColumnPage();
      },
    ));

    router.define(rowPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return RowPage();
      },
    ));

    router.define(containerPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return ContainerPage();
      },
    ));
    router.define(samplePage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return SamplePage();
      },
    ));

  }
}


