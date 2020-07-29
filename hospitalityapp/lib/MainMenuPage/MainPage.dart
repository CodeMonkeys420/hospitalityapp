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
//  canvasColor: Colors.deepOrange,
//  accentColor: Colors.grey,
);

class MainPageClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400],
        elevation: 1.0,
        title: Text('Sign in to Hospitality App'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.home),
            label: Text(''),
            onPressed: () {
//                widget.toggleView();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPageClass()),
              );
            },
          ),

        ],
      ),
      body: Center(
         child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
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
      ),
    );
  }
}

class ActivitiesPage extends MaterialPageRoute<Null> {
  ActivitiesPage() : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1.0,
      ),
      body: Center(
          child: Column(
            children: <Widget>[

              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World'),
                      new Text('How are you?')
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World'),
                      new Text('How are you?')
                    ],
                  ),
                ),
              )
            ],
          )
      ),
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


