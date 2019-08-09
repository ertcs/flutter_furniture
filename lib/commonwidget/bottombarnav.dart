import 'package:flutter/material.dart';
import 'package:flutter_app/model/bottombarmodel.dart';
import 'package:flutter_app/commonwidget/alltextwidget.dart';
import 'package:flutter_app/util/utillityCommon.dart';
class BottomBarNav extends StatefulWidget {
  final List<BarItems> barIcons;
  final Function onBarTap;

  BottomBarNav(this.barIcons, this.onBarTap);

  @override
  _BottomBarNavState createState() => _BottomBarNavState();
}

class _BottomBarNavState extends State<BottomBarNav> with TickerProviderStateMixin{
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      color: Colors.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildBarItem(),
        ),
      ),
    );
  }

  List<Widget> _buildBarItem() {
    List<Widget> barItems = List();

    for (int i = 0; i < widget.barIcons.length; i++) {
      BarItems eachItem = widget.barIcons[i];
      bool isSelected = selectedBarIndex == i;
      barItems.add(InkWell(
        splashColor: Colors.transparent,
        onTap: (){
          setState(() {
            selectedBarIndex = i;
            widget.onBarTap(i);
          });
        },
        child: AnimatedContainer(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12.0),
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: isSelected?lightColor:Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              isSelected? Text(""):getSelectedIcon(isSelected, eachItem.colors, eachItem.iconData),
              AnimatedSize(
                duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  vsync: this,
                  child: isSelected?TabText(eachItem.title, eachItem.colors):Text(''))
            ],
          ),
        ),
      ));
    }

    return barItems;
  }
}
