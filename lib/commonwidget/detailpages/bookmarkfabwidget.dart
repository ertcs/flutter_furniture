import 'package:flutter/material.dart';
import 'package:flutter_app/util/utillityCommon.dart';

class BookMarkedFab extends StatefulWidget {
  bool isBookMarked;
  BookMarkedFab(this.isBookMarked);
  @override
  _BookMarkedFabState createState() => _BookMarkedFabState();
}

class _BookMarkedFabState extends State<BookMarkedFab> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: darkColor,
      borderRadius: BorderRadius.circular(50),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.isBookMarked = !widget.isBookMarked;
//                      widget.isBookMarked?widget.notificationCount++:widget.notificationCount--;
          });
        },
        child: Icon(
          widget.isBookMarked ? Icons.bookmark : Icons.bookmark_border,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}