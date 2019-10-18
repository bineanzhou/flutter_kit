import 'package:flutter/material.dart';
import 'package:flutter_kit_app/config/dimens.dart';
import 'package:flutter_kit_app/modules/routers/application.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';

import 'model/widget_item.dart';

class WidgetsPage extends StatelessWidget {
  final List<WidgetItem> allWidgets = WidgetItem.allWidgets();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(Dimens.pagePadding),
      childAspectRatio: 5 / 8, //宽高比
      children: allWidgets.map((WidgetItem city) {
        return _getGridViewItemUI(context, city);
      }).toList(),
    );
  }

  Widget _getGridViewItemUI(BuildContext context, WidgetItem widgetItem) {
    return InkWell(
      onTap: () {
//        showSnackBar(context, city);
        Application.navigateTo(context, Routes.pathSamplePage);

      },
      child: Card(
        elevation: 3.0,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(Dimens.itemPadding),
              child: Image.asset(
                widgetItem.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimens.itemPadding5,left: Dimens.itemPadding, right: Dimens.itemPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widgetItem.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: Dimens.textSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widgetItem.desc,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: Dimens.textSizeSubTitle,  fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
