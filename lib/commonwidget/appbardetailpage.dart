import 'package:flutter/material.dart';
import 'cartcountwidget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/model/cartmodel.dart';

class AppBarDetailPage extends StatefulWidget with PreferredSizeWidget {

  int notificationCount=0;

  AppBarDetailPage(this.notificationCount);

  @override
  _AppBarDetailPageState createState() => _AppBarDetailPageState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarDetailPageState extends State<AppBarDetailPage> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 22, left: 0, bottom: 12),
        child: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
          size: 30,
        ),
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
                  child: widget.notificationCount != 0
                      ? CartCountWidget(widget.notificationCount)
                      : SizedBox(),
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
