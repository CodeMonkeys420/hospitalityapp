import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hospitalityapp/MainMenuPage/MainPage.dart';



class SpaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carousel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpaPageClass(title: 'Carousel Demo'),
    );
  }
}

class SpaPageClass extends StatefulWidget {
  SpaPageClass({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SpaPageClassState createState() => _SpaPageClassState();
}

class _SpaPageClassState extends State<SpaPageClass> {
  List<String> imageLinks = [
    'https://homepages.cae.wisc.edu/~ece533/images/fruits.png',
    'https://homepages.cae.wisc.edu/~ece533/images/cat.png',
    'https://homepages.cae.wisc.edu/~ece533/images/peppers.png',
    'https://homepages.cae.wisc.edu/~ece533/images/tulips.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPageClass()),
                );
              },
            ),
          ],
          backgroundColor: Colors.deepPurple,
          elevation: 1.0,
          title: const Text('Activities'),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CarouselSlider(
                      height: 400.0,
                      items: imageLinks.map((imageLink) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Image.network(
                                  imageLink,
                                  fit: BoxFit.cover,
                                ));
                          },
                        );
                      }).toList(),

                      reverse:
                      false, //is false by default (reverses the order of items)
                      enableInfiniteScroll:
                      true, //is true by default (it scrolls back to item 1 after the last item)
                      autoPlay: true, //is false by default
                      initialPage:
                      0, //allows you to set the first item to be displayed
                      scrollDirection: Axis.horizontal, //can be set to Axis.vertical
                      pauseAutoPlayOnTouch: Duration(
                          seconds: 5), //it pauses the sliding if carousel is touched,
                      onPageChanged: (int pageNumber) {
                        //this triggers everytime a slide changes
                      },
                      viewportFraction: 0.8,
                      enlargeCenterPage: true, //is false by default
                      aspectRatio:
                      16 / 9, //if height is not specified, then this value is used
                    ),
                    Container(

                    ),
                  ]
              ),
            )
        )
    );
  }
}