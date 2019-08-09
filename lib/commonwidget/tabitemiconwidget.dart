import 'package:flutter/material.dart';
import 'package:flutter_app/util/utillityCommon.dart';

class TabItemIcon extends StatelessWidget {
  final String image;
  final bool isSelected;

  TabItemIcon(this.image, this.isSelected);
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(image);
    Image imageIcon = Image(
      image: assetImage,
      width: 40,
      height: 60,
    );
    return Container(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        child: Material(
          color: isSelected? darkColor : Colors.white,
          elevation: 5,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: imageIcon,
          ),
        ),
      ),
    );
  }
}