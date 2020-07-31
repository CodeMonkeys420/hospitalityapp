import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospitalityapp/LoginAndRegister/LoginPage.dart';
import 'package:nice_button/nice_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../RestuarantPage.dart';
import '../PromotionsPage.dart';
import '../SpaPage.dart';

void main() {
  runApp(MaterialApp(
    home: MainPageClass(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.white,
  accentColor: Colors.grey,
);

class MainPageClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://www.backgroundscool.com/wp-content/uploads/2019/10/crop-4-27.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      //body: Center(
         child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 200, 8, 0),
                child: NiceButton(
                  radius: 40,
                  padding: const EdgeInsets.all(15),

                  text: "Activities Page",
                 // icon: Icons.account_box,
                  gradientColors: [secondColor, firstColor],
                  onPressed: () {
                    Navigator.push(
                        context,
                        ActivitiesPage()
                    );
                  },
                ),
              ), //main menu buttons
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: NiceButton(
                  radius: 40,
                  padding: const EdgeInsets.all(15),
                  text: "Restuatants Page",
                 // icon: Icons.account_box,
                  gradientColors: [secondColor, firstColor],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestuarantsPage()),//restuarant
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: NiceButton(
                  radius: 40,
                  padding: const EdgeInsets.all(15),
                  text: "Spa Page",
//                icon: Icons.account_box,
                  gradientColors: [secondColor, firstColor],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SpaPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: NiceButton(
                  radius: 40,
                  padding: const EdgeInsets.all(15),
                  text: "Promotions Page",
//                icon: Icons.account_box,
                  gradientColors: [secondColor, firstColor],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PromotionsPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: NiceButton(
                  radius: 40,
                  padding: const EdgeInsets.all(15),
                  text: "Accommodation",
                  // icon: Icons.account_box,
                  gradientColors: [secondColor, firstColor],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestuarantsPage()),
                    );
                  },
                ),
              ),
            ],
          )
      //),
    );
  }
}

class ActivitiesPage extends MaterialPageRoute<Null> {
  ActivitiesPage() : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 1.0,
        title: const Text('Activities'),
      ),
      body:SingleChildScrollView( child: Center(
          child: Column(
            children: <Widget>[

              Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new ListTile(
                      leading:SizedBox( //having an image first before text on cards
                        height: 200.0,
                        width: 150.0, // fixed width and height
                        child: Image.network('https://spartanshield.org/wp-content/uploads/2018/02/Black-Panther-900x900-1518475303.jpg'),
                      ),
                      title: Text('Resturuant Name'),
                      subtitle: Text('Description of the place'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Book'),
                          onPressed: () {/* ... */},
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new ListTile(
                      leading:SizedBox( //having an image first before text on cards
                        height: 200.0,
                        width: 150.0, // fixed width and height
                        child: Image.network('https://vignette.wikia.nocookie.net/mua/images/f/fa/MUA3_Black_Panther.png/revision/latest?cb=20190622013215'),
                      ),
                      title: Text('Resturuant Name'),
                      subtitle: Text('Description of the place'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Book'),
                          onPressed: () {/* ... */},
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new ListTile(
                      leading:SizedBox( //having an image first before text on cards
//                        height: 200.0,
//                        width: 150.0, // fixed width and height
                        child: Image.network('https://i.pinimg.com/originals/2b/32/11/2b32119a2f1c7623e4ca3e976cbd3efc.jpg'),
                      ),
                      title: Text('Resturuant Name'),
                      subtitle: Text('Description of the place'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Book'),
                          onPressed: () {/* ... */},
                        ),

                      ],
                    ),
                  ],
                ),
              ),
             ] )))
    );
  });
}



