import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'file:///C:/Users/Mario/Desktop/hospitalityapp/hospitalityapp/lib/MainPage.dart';



class SpaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spa Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpaPageClass(title: 'Spa Page'),
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
          title: const Text('Spa Page'),
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