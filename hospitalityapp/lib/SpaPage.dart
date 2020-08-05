import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'BookingPage.dart';
import 'LoginAndRegister/LoginPage.dart';
import 'MainPage.dart';
import 'SliderTest.dart';




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
            Container(
              width: 40,
              height: 40,
              child: FloatingActionButton(
                elevation: 40,
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingPage()),
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
          backgroundColor: Colors.deepPurple,
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
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                          child: Text('From aromatherapy massages and mineral scrubs to facials and detox treatments, there’s a spa treatment with your name on it.'
                          ),

                        ),
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                          child: Text('From aromatherapy massages and mineral scrubs to facials and detox treatments, there’s a spa treatment with your name on it.'
                          ),
                        ),
                      ),
                    ),CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                          child: Text('From aromatherapy massages and mineral scrubs to facials and detox treatments, there’s a spa treatment with your name on it.'
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