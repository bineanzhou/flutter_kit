import 'package:flutter_kit_app/config/assets.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';

class WidgetItem {
  final String image;
  final String name;
  final String desc;
  final String path;

  WidgetItem({this.image, this.name, this.desc, this.path});

  static List<WidgetItem> allWidgets() {
    var list = List<WidgetItem>();

    list.add(WidgetItem(
      image: Assets.wgtContainer,
      name: "Container",
      desc: "绘制、定位、调整大小",
      path: Routes.pathSamplePage,
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "London",
      desc: "",
      path: Routes.pathSamplePage,
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "Vancouver",
      desc: "",
      path: Routes.pathSamplePage,
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "New York",
      desc: "",
      path: Routes.pathSamplePage,
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "Paris",
      desc: "",
      path: Routes.pathSamplePage,
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "Berlin",
      desc: "",
      path: Routes.pathSamplePage,
    ));
    return list;
  }
}
