import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//void main() => runApp(new MyApp());

class CardSwipeClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CardSwipePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CardSwipePage extends StatefulWidget {
  CardSwipePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CardSwipePageState createState() => new _CardSwipePageState();
}

class _CardSwipePageState extends State<CardSwipePage> with TickerProviderStateMixin {
  PageController pageViewController;
  String str;
  GlobalKey<ScaffoldState> scfldKey = new GlobalKey<ScaffoldState>();
  List<Map<String, dynamic>> fruits = [
    {
      'name': 'Spur',
      'image': 'assets/RedDot_Burger.jpg',
      'color': Colors.orange,
      'price': '',
      'disc':
      'Spur Corporation is a steakhouse franchise restaurant chain originating from South Africa with a focus on family dining. The head office of Spur Corporation is situated in Century City, Cape Town.',
    },
    {
      'name': 'Steers',
      'image': 'assets/RedDot_Burger.jpg',
      'color': Colors.green,
      'price': '',
      'disc':
      'Long-running counter-serve chain known for flame-grilled beef burgers and thick, handmade chips.',
    },
    {
      'name': 'KFC',
      'image': 'assets/RedDot_Burger.jpg',
      'color': Colors.red,
      'price': '',
      'disc':
      'KFC is an American fast food restaurant chain headquartered in Louisville, Kentucky, that specializes in fried chicken. It is the worlds second-largest restaurant chain after McDonalds, with 22,621 locations globally in 150 countries as of December 2019. The chain is a subsidiary of Yum!',
    },
  ];
  Color clr = Colors.orange;
  var pos = 20.0;
  int currentPage = 0;
  double pageOffset = 0.0;
  double currentOffset = 0.0;
  var dir = ScrollDirection.reverse;
  @override
  void initState() {
    super.initState();
    pageViewController = new PageController(initialPage: 0);
    setState(() {
      clr = fruits[0]['color'];
    });
    pageViewController.addListener(() {
      dir = pageViewController.position.userScrollDirection;
      currentPage = pageViewController.page.truncate();
      currentOffset = pageViewController.offset;
      pageOffset = pageViewController.position.extentInside * currentPage;
      setState(() {
        pos = getMappedValue(0.0, pageViewController.position.extentInside,
            20.0, 100.0, pageViewController.offset - pageOffset);
      });
    });
  }

  double getMappedValue(double range1low, double range1high, double range2low,
      double range2high, double number) {
    return ((number - range1low) *
        ((range2high - range2low) / (range1high - range1low))) +
        range2low;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scfldKey,
      body: AnimatedContainer(
        padding: EdgeInsets.only(top: 50.0),
        duration: Duration(milliseconds: 1000),
        curve: Curves.ease,
        color: clr,
        child: PageView.builder(
          itemCount: fruits.length,
          onPageChanged: (int page) {
            this.setState(() {
              clr = fruits[page]['color'];
              print(page);
              print(clr);
            });
          },
          controller: pageViewController,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(scfldKey.currentContext).size.height -
                        100.0,
                    width: MediaQuery.of(scfldKey.currentContext).size.width -
                        60.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          width: MediaQuery.of(scfldKey.currentContext)
                              .size
                              .width -
                              100.0,
                          left: index != currentPage
                              ? getMappedValue(20.0, 100.0, 160.0, 20.0, pos)
                              : getMappedValue(20.0, 100.0, 20.0, -120.0, pos),
                          top: 20.0,
                          child: Opacity(
                            opacity: index != currentPage
                                ? getMappedValue(20.0, 100.0, 0.0, 01.0, pos)
                                : getMappedValue(20.0, 100.0, 01.0, 00.0, pos),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      '${fruits[index]['name']}',
                                      maxLines: 1,
                                      softWrap: true,
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      '${fruits[index]['price']}',
                                      softWrap: true,
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text(
                                    '${fruits[index]['disc']}',
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: index != currentPage
                              ? getMappedValue(20.0, 100.0, 160.0, 20.0, pos)
                              : getMappedValue(20.0, 100.0, 20.0, -120.0, pos),
                          bottom: 20.0,
                          child: Opacity(
                            opacity: index != currentPage
                                ? getMappedValue(20.0, 100.0, 0.0, 0.4, pos)
                                : getMappedValue(20.0, 100.0, 0.4, 00.0, pos),
                            child: Text(
                              '${fruits[index]['name']}',
                              maxLines: 1,
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: 130.0, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: index != currentPage
                        ? getMappedValue(20.0, 100.0, -120.0, -10.0, pos)
                        : getMappedValue(20.0, 100.0, -10.0, 120.0, pos),
                    bottom: 100.0,
                    child: Image.asset(
                      '${fruits[index]['image']}',
                      height: 240.0,
                      width: 240.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}