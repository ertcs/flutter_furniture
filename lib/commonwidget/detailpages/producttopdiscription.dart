import 'package:flutter/material.dart';

class ProductTopDiscWidget extends StatelessWidget {

//  TODO: updating product model with product descriptions

  final disc1 = "Floor to Seat - 19\"";
  final disc2 = "Floor to Back - 28\"";
  final disc3 = "Inside to Inside - 18.5\"";
  final disc4 = "Dining Chair";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Height",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat'),
          ),
          Text(
            disc1,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            disc2,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Width",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat'),
          ),
          Text(
            disc3,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Type",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat'),
          ),
          Text(
            disc4,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
