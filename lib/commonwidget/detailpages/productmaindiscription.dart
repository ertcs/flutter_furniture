import 'package:flutter/material.dart';
import 'package:flutter_app/util/utillityCommon.dart';
import 'package:flutter_app/commonwidget/alltextwidget.dart';
import 'package:flutter_app/commonwidget/detailpages/productfeaturewidget.dart';


class ProductMainDiscWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      bottom: 0,
      left: 0,
      right: 0,
      child: Material(
        elevation: 20,
        color: lightColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: OverViewText(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: ProductDiscText(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30,right: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ProductFeatureWidget('Upholstery', 'Polyester Blend'),
                    ProductFeatureWidget('Cushion Design', 'T-Cushion'),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30,right: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ProductFeatureWidget('Product Care"', 'Machine washable'),
                    ProductFeatureWidget('Pieces Included', 'One Piece'),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

