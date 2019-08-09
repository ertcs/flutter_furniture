import 'package:flutter/material.dart';
import 'package:flutter_app/model/furnituremodel.dart';
import 'itemcardwidget.dart';

class ItemListViewWidget extends StatelessWidget {
  final int tabTextSelected;
  final List<FurnitureModel> furnitureList;

  ItemListViewWidget(this.tabTextSelected, this.furnitureList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90, top: 0, bottom: 20),
      child: tabTextSelected == 1
          ? Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: furnitureList.length,
                itemBuilder: (BuildContext contect, int index) {
                  return ItemCardWidget(furnitureList[index]);
                },
              ),
            )
          : Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: furnitureList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemCardWidget(furnitureList[index]);
                },
              ),
            ),
    );
  }
}
