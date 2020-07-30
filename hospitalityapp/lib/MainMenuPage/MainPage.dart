import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospitalityapp/LoginAndRegister/LoginPage.dart';
import 'package:nice_button/nice_button.dart';

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
              ),

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
                        RestuatantsPage()
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
                        SpaPage()
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
                        PromotionPage()
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: NiceButton(
                  radius: 40,
                  padding: const EdgeInsets.all(15),
                  text: "Test Page",
                  // icon: Icons.account_box,
                  gradientColors: [secondColor, firstColor],
                  onPressed: () {
                    Navigator.push(
                        context,
                        TestPage()
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

class RestuatantsPage extends MaterialPageRoute<Null> {
  RestuatantsPage() : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {

          },
          child: Text("Restuarants Page"),
        ),
      ),
    );
  });

}

class SpaPage extends MaterialPageRoute<Null> {
  SpaPage() : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {

          },
          child: Text("Spa Page"),
        ),
      ),
    );
  });
}

class PromotionPage extends MaterialPageRoute<Null> {
  PromotionPage() : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {

          },
          child: Text("Activities Page"),
        ),
      ),
    );
  });
}

class TestPage extends MaterialPageRoute<Null> {
  TestPage() : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {

          },
          child: Text("Activities Page"),
        ),
      ),
    );
  });
}


