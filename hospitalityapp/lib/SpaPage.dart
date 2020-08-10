import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'ActivitiesPage.dart';
import 'BookingPage.dart';
import 'LoginAndRegister/LoginPage.dart';
import 'MainPage.dart';
import 'SliderTest.dart';

final List<String> imgList = [
  'https://www.mesora.co.za/sitepad-data/uploads//2020/06/spa-massage.jpg',
  'https://img.freepik.com/free-photo/asian-woman-spa-salon_1421-3764.jpg?size=626&ext=jpg',
  'https://d2rw7fmapbgpu6.cloudfront.net/beta-sf608504prep.storefront.co.za/pictures/637175334383153818/mangwanani-sibaya-(432x720).jpg?maxwidth=710',
  'https://www.himalayanbodycare.com/wp-content/uploads/2020/01/Best-Spa-in-Nepal.jpg',
  'https://www.magaliesmountainlodge.co.za/media/cache/a2/56/a256bfc6524fd5e59aa30fa1ecb1a037.jpg'];


class SpaAndRelaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spa Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpaAndRelaxPageClass(title: 'Accommodation Page'),
    );
  }
}

class SpaAndRelaxPageClass extends StatefulWidget {
  SpaAndRelaxPageClass({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SpaAndRelaxPageClassState createState() => _SpaAndRelaxPageClassState();
}

class _SpaAndRelaxPageClassState extends State<SpaAndRelaxPageClass> {
  var _imageUrls = [
    'https://www.mesora.co.za/sitepad-data/uploads//2020/06/spa-massage.jpg',
    'https://img.freepik.com/free-photo/asian-woman-spa-salon_1421-3764.jpg?size=626&ext=jpg',
    'https://d2rw7fmapbgpu6.cloudfront.net/beta-sf608504prep.storefront.co.za/pictures/637175334383153818/mangwanani-sibaya-(432x720).jpg?maxwidth=710',
    'https://www.himalayanbodycare.com/wp-content/uploads/2020/01/Best-Spa-in-Nepal.jpg',
    'https://www.magaliesmountainlodge.co.za/media/cache/a2/56/a256bfc6524fd5e59aa30fa1ecb1a037.jpg'];
  int _current = 0;
  List<int> list = [1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: <Widget>[
            Container(
              width: 40,
              height: 40,
              child: FloatingActionButton(
                elevation: 40,
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bookSpot()),
                  );
                },
                child: new IconTheme(
                  data: new IconThemeData(
                      color: Colors.black),
                  child: new Icon(Icons.book),
                ),

                //tooltip: 'Pick Image',
              ),
            ),
          ],
          backgroundColor: Colors.lightBlueAccent,
          elevation: 1.0,
          title: const Text('Spa Page'),
        ),
        body: SingleChildScrollView( child:Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }
                      ),
                      items: imageSliders,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.map((url) {
                        int index = imgList.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Life Day Spa is part of the wellness revolution and is committed to assisting our clients in their quest to look and feel better. In line with our mission to deliver “an extraordinary experience in spa wellness”, we are constantly on the look-out for ways we can improve the lives of our guests by introducing new treatments, continuous education and partnering with cutting edge wellness businesses.'
                            ),
                          ),

                        ),
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }
                      ),
                      items: imageSliders,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.map((url) {
                        int index = imgList.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Life Day Spa is part of the wellness revolution and is committed to assisting our clients in their quest to look and feel better. In line with our mission to deliver “an extraordinary experience in spa wellness”, we are constantly on the look-out for ways we can improve the lives of our guests by introducing new treatments, continuous education and partnering with cutting edge wellness businesses.'
                            ),
                          ),

                        ),
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }
                      ),
                      items: imageSliders,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.map((url) {
                        int index = imgList.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Life Day Spa is part of the wellness revolution and is committed to assisting our clients in their quest to look and feel better. In line with our mission to deliver “an extraordinary experience in spa wellness”, we are constantly on the look-out for ways we can improve the lives of our guests by introducing new treatments, continuous education and partnering with cutting edge wellness businesses.'
                            ),
                          ),

                        ),
                      ),
                    ),
                  ]
              ),
            ),
          )
        )
    );
  }
}