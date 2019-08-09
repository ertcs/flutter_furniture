import 'package:flutter/material.dart';
import 'alltextwidget.dart';


class CartCountWidget extends StatelessWidget {

  final int notificationCount;

  CartCountWidget(this.notificationCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: NotificationText(notificationCount)
      ),
    );
  }
}