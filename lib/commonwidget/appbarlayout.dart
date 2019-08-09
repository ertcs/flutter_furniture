import 'package:flutter/material.dart';
import 'package:flutter_app/commonwidget/cartcountwidget.dart';
import 'custommenuicon.dart';


class MyAppbar extends StatefulWidget with PreferredSizeWidget {
  final Color color;
  MyAppbar(this.color);

  @override
  _MyAppbarState createState() => _MyAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppbarState extends State<MyAppbar> {
  int notificationCount =  1;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.color,
      brightness: Brightness.light,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 22,left: 10,bottom: 12),
        child: CustomMenuIcon(),
      ),
      actions: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(
              width: 20.0,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
              size: 40,
            ),
            SizedBox(
              width: 20.0,
            ),
            Stack(
              children: <Widget>[
                Icon(Icons.shopping_cart, color: Colors.black, size: 40),
                Positioned(
                  top: 0,
                  bottom: 20,
                  right: 0,
                  left: 20,
                  child: notificationCount!=0?CartCountWidget(notificationCount):SizedBox(),
                )
              ],
            ),
            SizedBox(
              width: 20.0,
            )
          ],
        ),
        Container(
          color: Colors.red,
        )
      ],
    );
  }
}


