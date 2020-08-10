import 'package:flutter/material.dart';
import 'AccommodationDetails.dart';
import 'GeneratedCardPage.dart';
import 'MainPage.dart';



class AccommodationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accommodation Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccommodationPageClass(title: 'Accommodation Page'),
    );
  }
}

class AccommodationPageClass extends StatefulWidget {
  AccommodationPageClass({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AccommodationPageClassState createState() => _AccommodationPageClassState();
}

class _AccommodationPageClassState extends State<AccommodationPageClass> {


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
          backgroundColor: Colors.lightBlueAccent,
          elevation: 1.0,
          title: const Text('Accommodation Page'),
        ),
        body:SingleChildScrollView( child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccommodationDetailsPage()),
                      );
                    },
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
                          Image.asset('assets/room1.jpg'),
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
                                      "300"
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
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccommodationDetailsPage()),
                      );
                    },
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
                          Image.asset('assets/room2.jpg'),
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
                                    "550"
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
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccommodationDetailsPage()),
                      );
                    },
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
                          Image.asset('assets/room4.jpg'),
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
                        ],

                      ),
                    ),
                  ),

                ]
            ),
          ),
        ),
        )
    );
  }
}