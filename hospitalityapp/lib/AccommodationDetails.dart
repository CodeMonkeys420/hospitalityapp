import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'AccommodationPage.dart';
import 'BookingPage.dart';
import 'LoginAndRegister/LoginPage.dart';
import 'MainPage.dart';
import 'SliderTest.dart';




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

class _AccommodationDetailsPageClassState extends State<AccommodationDetailsPageClass> {
  var _imageUrls = [
    'https://images.unsplash.com/photo-1558981852-426c6c22a060?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2015/03/26/09/47/sky-690293__340.jpg',
    'https://images.pexels.com/photos/39853/woman-girl-freedom-happy-39853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://jenmulligandesign.com/wp-content/uploads/2017/04/pexels-beach-tropical-scene-free-stock-photo.jpg',
    'https://picjumbo.com/wp-content/uploads/sunset-ocean-free-photo-DSC04212-1080x720.jpg'];

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
          backgroundColor: Colors.deepPurple,
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
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
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

                                  subtitle: Text("THe legendary Michelangelo Hotel Sandton, Johannesburg, is a five-star hotel located on Nelson Mandela Square in the heart of the business district."),
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

                                  subtitle: Text("THe legendary Michelangelo Hotel Sandton, Johannesburg, is a five-star hotel located on Nelson Mandela Square in the heart of the business district."),
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

                                  subtitle: Text("THe legendary Michelangelo Hotel Sandton, Johannesburg, is a five-star hotel located on Nelson Mandela Square in the heart of the business district."),
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
                      backgroundColor: Colors.deepPurple,

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AccommodationDetailsPage()),
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