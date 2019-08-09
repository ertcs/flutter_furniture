import 'package:flutter/material.dart';
import 'package:flutter_app/util/utillityCommon.dart';
import 'package:flutter_app/model/furnituremodel.dart';
import 'package:flutter_app/commonwidget/alltextwidget.dart';
import 'detailpages/itemdetailpage.dart';


class ItemCardWidget extends StatelessWidget {

  final FurnitureModel itemList;

  ItemCardWidget(this.itemList);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        height: 400,
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CardTitleText(itemList.name),
                  CardSubTitleText(itemList.tag)
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemDetailPage(itemList)),
                );
              },
              child: Hero(
                tag: itemList.name,
                child: Image.asset(
                  itemList.image,
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 30),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: itemList.name=='404'?'':'FROM', style: kFromTextStyle),
                    TextSpan(
                        text: itemList.name=='404'?'':itemList.price,
                        style: kPriceTextStyle),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

