import 'package:flutter/material.dart';
import 'package:hospitalityapp/MainPage.dart';
import 'package:simple_slider/simple_slider.dart';



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
                    Text('Spa Pagesdfgsfdegsdfg'),
                    ImageSliderWidget(
                      imageUrls: _imageUrls,
                      imageBorderRadius: BorderRadius.circular(8.0),
                    ),
                  ]
              ),
            )
        )
    );
  }
}