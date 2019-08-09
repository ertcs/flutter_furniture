import 'package:flutter/material.dart';
import 'package:flutter_app/util/utillityCommon.dart';

class HorizontalTextView extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function tabTab;

  HorizontalTextView(this.title, this.isSelected, this.tabTab);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: GestureDetector(
        onTap: tabTab,
        child: Container(
          height: 100,
          width: 165,
          child: Column(
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 3,
                width: 80,
                color: isSelected ? darkColor : Colors.transparent,
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedDefaultTextStyle(
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      color: isSelected ? Colors.black : Colors.black26),
                  duration: Duration(milliseconds: 300),
                  child: Text(title))
            ],
          ),
        ),
      ),
    );
  }
}