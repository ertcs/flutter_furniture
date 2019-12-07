import 'package:flutter/material.dart';
import 'package:flutter_app/commonwidget/bottombarnav.dart';
import 'package:flutter_app/commonwidget/appbarlayout.dart';
import 'package:flutter_app/commonwidget/alltextwidget.dart';
import 'model/bottombarmodel.dart';
import 'util/utillityCommon.dart';
import 'commonwidget/tabitemiconwidget.dart';
import 'commonwidget/horizonteltabtext.dart';
import 'model/furnituremodel.dart';
import 'commonwidget/itemlistviewwidget.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final List<BarItems> barItems = [
    BarItems("home", Icons.home, darkColor),
    BarItems("account", Icons.person, darkColor),
    BarItems("setting", Icons.settings, darkColor),
    BarItems("saved", Icons.bookmark, darkColor)
  ];

  final List<String> imagesIcons = [
    icon_chair_black,
    icon_table_black,
    icon_lamp_black,
    icon_sofa_black
  ];

  final List<String> whiteIcons = [
    icon_chair_white,
    icon_table_white,
    icon_lamp_white,
    icon_sofa_white
  ];

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int selectedBarItem = 0;
  int selectedIconTab = 0;
  int tabTextSelected = 0;
  bool isTextTabSelected = true;
  AnimationController _controller;
  Animation<double> _animation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(-0.10, 0))
        .animate(_controller);
  }

  playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my_farniture',
      home: Scaffold(

        backgroundColor: Colors.white,
        appBar: MyAppbar(Colors.white),
        body: layoutContainer(selectedBarItem),
        bottomNavigationBar: BottomBarNav(widget.barItems, (index) {
          setState(() {
            selectedBarItem = index;
          });
        }),
      ),
    );
  }

  layoutContainer(int index) {
    switch (index) {
      case 0:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            TitleTextWidget(),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 80,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80, right: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.imagesIcons.length,
                      itemBuilder: (BuildContext context, int index) {
                        bool isIconTabSelected = selectedIconTab == index;
                        return InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              selectedIconTab = index;
                            });
                          },
                          child: TabItemIcon(
                              isIconTabSelected
                                  ? widget.whiteIcons[index]
                                  : widget.imagesIcons[index],
                              isIconTabSelected),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    child: Material(
                      color: Colors.white,
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Image.asset(icon_filter,height: 40,width: 40,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 500,
              width: double.infinity,
              child: Stack(
                children: <Widget>[

                  Positioned(
                    top: -10,
                    bottom: 0,
                    left: -30,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          HorizontalTextView(
                              'Refurbished', tabTextSelected == 0, () {
                            setState(() {
                              tabTextSelected = 0;
                            });
                          }),
                          HorizontalTextView('First Hand', tabTextSelected == 1,
                              () {
                            setState(() {
                              tabTextSelected = 1;
                            });
                          }),
                        ],
                      ),
                    ),
                  ),
                  FutureBuilder(
                      future: playAnimation(),
                      builder: (context, snapshot) {
                        return FadeTransition(
                            opacity: _animation,
                            child: SlideTransition(
                              position: _slideAnimation,
                              child: ItemListViewWidget(
                                  tabTextSelected,
                                  furnitureModel(
                                      tabTextSelected, selectedIconTab)),
                            ));
                      })
                ],
              ),
            )
          ],
        );
        break;
      case 1:
        return Center(child: Text('account page'));
        break;
      case 2:
        return Center(child: Text('setting page'));
        break;
      case 3:
        return Center(child: Text('saved Item'));
        break;
    }
  }

  List<FurnitureModel> furnitureModel(
      int tabTextSelected, int selectedIconTab) {
    List<FurnitureModel> selectedModel = emptyList;
    switch (selectedIconTab) {
      case 0:
        selectedModel = tabTextSelected == 1 ? chairList : usedChairList;
        break;
      case 1:
        selectedModel = tabTextSelected == 1 ? tableList : usedTableList;
        break;
      case 2:
        return emptyList;
        break;
      case 3:
        return emptyList;
        break;
    }

    return selectedModel;
  }
}

// https://dribbble.com/shots/6918545-Eny-Lee-Parker-spatial-designer-redesign-concept/attachments




