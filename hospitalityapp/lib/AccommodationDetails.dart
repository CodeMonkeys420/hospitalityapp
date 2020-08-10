import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'AccommodationPage.dart';
import 'ActivitiesPage.dart';
import 'BookingPage.dart';
import 'LoginAndRegister/LoginPage.dart';
import 'MainPage.dart';
//import 'SliderTest.dart';

final List<String> imgList = [
  'https://q-cf.bstatic.com/images/hotel/max1024x768/210/210996409.jpg',
  'https://r-cf.bstatic.com/images/hotel/max1024x768/215/215301175.jpg',
  'https://thebayhotel.com/wp-content/uploads/2018/07/gjK7nNAg.jpg',
  'https://thumbnails.trvl-media.com/fsfLdr6tVz6CvywH4IoCQgJG9rM=/500x333/smart/filters:quality(80)/images.trvl-media.com/hotels/1000000/530000/526300/526222/f11f787d_z.jpg',
  'https://media-cdn.tripadvisor.com/media/photo-s/0f/14/b0/5c/attide-hotel-bathroom.jpg'];


class AccommodationDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spa Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccommodationDetailsPageClass(title: 'Accommodation Page'),
    );
  }
}

class AccommodationDetailsPageClass extends StatefulWidget {
  AccommodationDetailsPageClass({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AccommodationDetailsPageClassState createState() => _AccommodationDetailsPageClassState();
}

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'No. ${imgList.indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
    ),
  ),
)).toList();

class _AccommodationDetailsPageClassState extends State<AccommodationDetailsPageClass> {
  var _imageUrls = [
    'https://q-cf.bstatic.com/images/hotel/max1024x768/210/210996409.jpg',
    'https://r-cf.bstatic.com/images/hotel/max1024x768/215/215301175.jpg',
    'https://thebayhotel.com/wp-content/uploads/2018/07/gjK7nNAg.jpg',
    'https://thumbnails.trvl-media.com/fsfLdr6tVz6CvywH4IoCQgJG9rM=/500x333/smart/filters:quality(80)/images.trvl-media.com/hotels/1000000/530000/526300/526222/f11f787d_z.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/0f/14/b0/5c/attide-hotel-bathroom.jpg'];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccommodationPage()),
                );
              },
            ),
//            Container(
//              width: 40,
//              height: 40,
//              child: FloatingActionButton(
//                elevation: 40,
//                backgroundColor: Colors.white,
//                onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => BookingPage()),
//                  );
//                },
//                child: new IconTheme(
//                  data: new IconThemeData(
//                      color: Colors.black),
//                  child: new Icon(Icons.book),
//                ),
//
//                //tooltip: 'Pick Image',
//              ),
//            ),
          ],
          backgroundColor: Colors.lightBlueAccent,
          elevation: 1.0,
          title: const Text('Accommodation Details Page'),
        ),
        body: SingleChildScrollView( child:Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      height: 600,
                      child:
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 3.0,
                        color: Colors.white,
                        margin: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            SizedBox(height: 0.0,),
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
                            SizedBox(height: 12.0,),

                            Stack(
                              children: [
                                Positioned(
                                  right: 20,
                                  child: Icon(
                                    Icons.hotel,
                                    color: Colors.pink,
                                    size: 24.0,

                                  ),
                                ),
                                Positioned(
                                  right: 45,
                                  child: Icon(
                                    Icons.hot_tub,
                                    color: Colors.blue,
                                    size: 24.0,

                                  ),
                                ),
                                Positioned(
                                  right: 65,
                                  child: Icon(
                                    Icons.accessibility,
                                    color: Colors.deepOrange,
                                    size: 24.0,

                                  ),
                                ),
                                ListTile(
                                  title: Text("Luxury Room"),

                                  subtitle: Text("Situated in Cape Town, Atlantic Marina offers luxurious accommodation within 800 m of the V&A Waterfront. This property offers free private parking on site. Each apartment at Atlantic Marina features a private entrance and a fully-equipped kitchen, including a dishwasher, washing machine and tumble dryer. Most units boast a seating or living area, equipped with a flat-screen TV with satellite channels, a CD player and a DVD player. Extras within the apartments include ironing facilities and a hairdryer, as well as towels and linen. Atlantic Marina features an outdoor swimming pool with a view and a fitness centre is available at a surcharge. Bicycle rental, car hire, airport shuttles and grocery delivery can be arranged upon request. Long Street is within 2 km of Atlantic Marina, while the Cape Town International Convention Centre is a 15-minute walk away."),
                                ),
                                Positioned(
                                  right: 20,
                                  bottom: 3,
                                  child: Text(
                                      "900"
                                  ),
                                ),
                                Positioned(
                                  right: 40,
                                  bottom: 0,
                                  child: Icon(
                                    Icons.attach_money,
                                    color: Colors.green,
                                    size: 24.0,

                                  ),
                                ),

                              ],

                            ),
                            SizedBox(height: 8.0,),

                          ],

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,8,8),
                    child: FloatingActionButton.extended(
                      label: Text('Book The Room'),
                      icon: Icon(Icons.add_shopping_cart),
                      backgroundColor: Colors.blue,
                      //gradientColors: [secondColor, firstColor],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => bookSpot()),
                        );
                      },
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