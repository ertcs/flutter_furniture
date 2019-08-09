import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/util/utillityCommon.dart';

const TextStyle title = TextStyle(fontSize: 20, fontFamily: "Montserrat", color: Colors.brown, fontWeight: FontWeight.w700);
const TextStyle subTitle= TextStyle(fontSize: 16, fontFamily: "Montserrat", color: Colors.brown, fontWeight: FontWeight.w300);



class TitleTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Featured',
            style:kNormalTextTile,
          ),
          Text(
            'Collections',
            style: kLargeTextTile,
          ),
        ],
      ),
    );
  }
}


class DetailTitleWidget extends StatelessWidget {



  final String title;
  final String subTitle;
  
  DetailTitleWidget(this.title, this.subTitle);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: kLargeTextTile,
          ),
          Text(
            subTitle,
            style:kNormalTextTile,
          ),

        ],
      ),
    );
  }
}

class TabText extends StatelessWidget {
  final String title;
  final Color color;

  TabText(this.title,this.color);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.w700, color: color, fontSize: 18.0,letterSpacing: 2.0),
    );
  }
}

class CardTitleText extends StatelessWidget {
  final String title;

  CardTitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      maxLines: 1,
      style: kCardTitleStyle,
    );
  }
}

class CardSubTitleText extends StatelessWidget {
  final String title;

  CardSubTitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      maxLines: 1,
      style: kCardSubTitleStyle,
    );
  }
}

class NotificationText extends StatelessWidget{
  final int notificationCount;

  NotificationText(this.notificationCount);
  @override
  Widget build(BuildContext context) {
    return Text(
      notificationCount.toString(),
      style: kCartCountStyle,
    );
  }

}

class ProductDiscText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'An innovative new take on a timeless favourite! Tried-and-true damask is reinvented as extremely livable in a brand new stretch jacquard fabric that contours to furniture for a custom-like fit.',
      style: TextStyle(
          fontSize: 16,
          color: Colors.brown,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500),
    );
  }
}

class OverViewText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Overview',
      style: TextStyle(
          fontSize: 40,
          fontFamily: "Montserrat",
          color: Colors.brown,
          fontWeight: FontWeight.w500),
    );
  }
}

class ProductFeatureText1 extends StatelessWidget {
  final String _string;
  ProductFeatureText1(this._string);
  @override
  Widget build(BuildContext context) {
    return Text(_string,style: title,);
  }
}

class ProductFeatureText2 extends StatelessWidget {
  final String _string;
  ProductFeatureText2(this._string);
  @override
  Widget build(BuildContext context) {
    return Text(_string,style: subTitle,);
  }
}



