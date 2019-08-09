import 'package:flutter/material.dart';
import 'package:flutter_app/commonwidget/alltextwidget.dart';

class ProductFeatureWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  ProductFeatureWidget(this.title,this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ProductFeatureText1(title),
        SizedBox(height: 5,),
        ProductFeatureText2(subTitle),
      ],
    );
  }
}
