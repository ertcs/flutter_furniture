import 'package:flutter/material.dart';
import 'package:flutter_app/model/furnituremodel.dart';
import 'package:flutter_app/commonwidget/appbardetailpage.dart';
import 'package:flutter_app/commonwidget/alltextwidget.dart';
import 'package:flutter_app/commonwidget/detailpages/bookmarkfabwidget.dart';
import 'package:flutter_app/commonwidget/detailpages/productimagewidget.dart';
import 'package:flutter_app/commonwidget/detailpages/producttopdiscription.dart';
import 'package:flutter_app/commonwidget/detailpages/productmaindiscription.dart';
import 'package:flutter_app/util/utillityCommon.dart';
import 'package:flutter_app/model/cartmodel.dart';
import 'package:provider/provider.dart';


class ItemDetailPage extends StatefulWidget {
  final FurnitureModel furnitureModel;
  bool isBookMarked = false;
  bool isAddedToCart =false;
  int notificationCount=1;
  ItemDetailPage(this.furnitureModel);

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarDetailPage(widget.notificationCount),
        body: Stack(
          children: <Widget>[
            ProductImageWidget(
                widget.furnitureModel.image, widget.furnitureModel.name),
            DetailTitleWidget(
                widget.furnitureModel.name, widget.furnitureModel.tag),
            ProductTopDiscWidget(),
            ProductMainDiscWidget(),
            Positioned(
              top: 320,
              left: 300,
              height: 70,
              width: 70,
              child: BookMarkedFab(widget.isBookMarked),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Material(
                elevation: 16.0,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 20),
                  child: Container(
                    height: kBottomNavigationBarHeight,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.furnitureModel.price,
                            style: TextStyle(fontSize: 30),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                widget.isAddedToCart = !widget.isAddedToCart;

                                widget.isAddedToCart?widget.notificationCount++:widget.notificationCount--;

                              });
                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: darkColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              child: Center(
                                  child: Text(
                                widget.isAddedToCart?'Check out':"Add to Cart",
                                style:
                                    TextStyle(fontSize: 20,
                                        color: Colors.white,
                                      fontWeight: FontWeight.w500
                                    ),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
