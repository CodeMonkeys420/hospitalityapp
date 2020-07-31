import 'package:flutter/material.dart';
import 'file:///C:/Users/Mario/Desktop/hospitalityapp/hospitalityapp/lib/MainPage.dart';



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
          backgroundColor: Colors.deepPurple,
          elevation: 1.0,
          title: const Text('Accommodation Page'),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                  ]
              ),
            )
        )
    );
  }
}