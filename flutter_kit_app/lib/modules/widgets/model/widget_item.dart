import 'package:flutter_kit_app/config/assets.dart';

class WidgetItem {
  final String image;
  final String name;
  final String desc;

  WidgetItem({this.image, this.name, this.desc});

  static List<WidgetItem> allWidgets() {
    var list = List<WidgetItem>();

    list.add(WidgetItem(
      image: Assets.wgtContainer,
      name: "Container",
      desc: "绘制、定位、调整大小",
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "London",
      desc: "",
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "Vancouver",
      desc: "",
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "New York",
      desc: "",
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "Paris",
      desc: "",
    ));
    list.add(WidgetItem(
      image: Assets.defaultImage,
      name: "Berlin",
      desc: "",
    ));
    return list;
  }
}
