import 'package:flutter/material.dart';
import 'package:flutter_app/util/utillityCommon.dart';

class BarItems{
  String title;
  IconData iconData;
  Color colors;

  BarItems(this.title, this.iconData,this.colors);

}

List<BarItems> barItems = [
  BarItems("home", Icons.home, darkColor),
  BarItems("account", Icons.person, darkColor),
  BarItems("setting", Icons.settings, darkColor),
  BarItems("saved", Icons.bookmark, darkColor)
];