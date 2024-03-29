import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/sample/sample_page.dart';
import 'package:flutter_kit_app/modules/widgets/animatedlist_page.dart';
import 'package:flutter_kit_app/modules/widgets/bottomnavigationbar_page.dart';
import 'package:flutter_kit_app/modules/widgets/button_page.dart';
import 'package:flutter_kit_app/modules/widgets/checkbox_page.dart';
import 'package:flutter_kit_app/modules/widgets/column_page.dart';
import 'package:flutter_kit_app/modules/widgets/container_page.dart';
import 'package:flutter_kit_app/modules/widgets/date_page.dart';
import 'package:flutter_kit_app/modules/widgets/drawer_page.dart';
import 'package:flutter_kit_app/modules/widgets/expansion_page.dart';
import 'package:flutter_kit_app/modules/widgets/icon_page.dart';
import 'package:flutter_kit_app/modules/widgets/image_page.dart';
import 'package:flutter_kit_app/modules/widgets/placeholder_page.dart';
import 'package:flutter_kit_app/modules/widgets/radio_page.dart';
import 'package:flutter_kit_app/modules/widgets/row_page.dart';
import 'package:flutter_kit_app/modules/widgets/scaffold_page.dart';
import 'package:flutter_kit_app/modules/widgets/slider_page.dart';
import 'package:flutter_kit_app/modules/widgets/switch_page.dart';
import 'package:flutter_kit_app/modules/widgets/tabbar_page.dart';
import 'package:flutter_kit_app/modules/widgets/text_page.dart';
import 'package:flutter_kit_app/modules/widgets/textfield_page.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String samplePage = "lib/modules/sample/sample_page";
  static String containerPage = "lib/modules/widgets/container_page.dart";
  static String rowPage = "lib/modules/widgets/row_page.dart";
  static String columnPage = "lib/modules/widgets/column_page.dart";
  static String imagePage = "lib/modules/widgets/image_page.dart";
  static String textPage = "lib/modules/widgets/text_page.dart";
  static String iconPage = "lib/modules/widgets/icon_page.dart";
  static String buttonPage = "lib/modules/widgets/button_page.dart";
  static String scaffoldPage = "lib/modules/widgets/scaffold_page.dart";
  static String placeholderPage = "lib/modules/widgets/placeholder_page.dart";
  static String bottomnavigationbarPage =
      "lib/modules/widgets/bottomnavigationbar_page.dart";
  static String tabbarPage = "lib/modules/widgets/tabbar_page.dart";
  static String drawerPage = "lib/modules/widgets/drawer_page.dart";
  static String textFieldPage = "lib/modules/widgets/textfield_page.dart";
  static String checkboxPage = "lib/modules/widgets/checkbox_page.dart";
  static String radioPage = "lib/modules/widgets/radio_page.dart";
  static String switchPage = "lib/modules/widgets/switch_page.dart";
  static String sliderPage = "lib/modules/widgets/slider_page.dart";
  static String datePage = "lib/modules/widgets/date_page.dart";
  static String animatedlistPage = "lib/modules/widgets/animatedlist_page.dart";
  static String expansionPage = "lib/modules/widgets/expansion_page.dart";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        // ignore: missing_return
        handlerFunc:
            (BuildContext context, Map<String, List<String>> params) {});

    router.define(expansionPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return ExpansionPage();
      },
    ));

    router.define(animatedlistPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return AnimatedListPage();
      },
    ));

    router.define(datePage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return DatePage();
      },
    ));

    router.define(sliderPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return SliderPage();
      },
    ));

    router.define(switchPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return SwitchPage();
      },
    ));

    router.define(radioPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return RadioPage();
      },
    ));

    router.define(checkboxPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return CheckboxPage();
      },
    ));

    router.define(textFieldPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return TextFieldPage();
      },
    ));

    router.define(drawerPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return DrawerPage();
      },
    ));

    router.define(tabbarPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return TabBarPage();
      },
    ));

    router.define(bottomnavigationbarPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return BottomNavigationBarPage();
      },
    ));

    router.define(placeholderPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return Placeholderpage();
      },
    ));

    router.define(scaffoldPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return ScaffoldPage();
      },
    ));

    router.define(buttonPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return ButtonPage();
      },
    ));

    router.define(iconPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return IconPage();
      },
    ));

    router.define(textPage, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return TextPage();
      },
    ));

    router.define(imagePage, handler: Handler(
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
