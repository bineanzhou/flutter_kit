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
      path: Routes.containerPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtRow,
      name: "Row",
      desc: "水平排列子widget 列表",
      path: Routes.rowPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtColumn,
      name: "Column",
      desc: "垂直方向上排列 widget列表",
      path: Routes.columnPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtImage,
      name: "Image",
      desc: "一个显示图片的widget ",
      path: Routes.imagePage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtText,
      name: "Text",
      desc: "单一格式的文本",
      path: Routes.textPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtIcon,
      name: "Icon",
      desc: "Material Design icon.",
      path: Routes.iconPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtButton,
      name: "RaisedButton",
      desc: "Material Design中的button",
      path: Routes.buttonPage,
    ));

    list.add(WidgetItem(
      image: Assets.wgtScaffold,
      name: "Scaffold",
      desc: "Material Design布局结构的基本实现",
      path: Routes.scaffoldPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtPlaceholder,
      name: "Placeholder",
      desc: "A widget that draws a box",
      path: Routes.placeholderPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtBottomnavigationbar,
      name: "BottomNavigationBa",
      desc: "底部导航条",
      path: Routes.bottomnavigationbarPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtTabbar,
      name: "TabBar",
      desc: "水平选项卡",
      path: Routes.tabbarPage,
    ));
    list.add(WidgetItem(
      image: Assets.wgtDrawer,
      name: "Drawer",
      desc: "水平滑动以显示导航面板",
      path: Routes.drawerPage,
    ));
    return list;
  }
}
