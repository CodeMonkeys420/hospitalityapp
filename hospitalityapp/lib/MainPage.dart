import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hospitalityapp/LoginAndRegister/LoginPage.dart';
import 'package:nice_button/nice_button.dart';
import 'AccommodationPage.dart';
import 'ActivitiesPage.dart';
import 'RestuarantPage.dart';
import 'PromotionsPage.dart';
import 'SliderTest.dart';
import 'SpaPage.dart';

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
          image: AssetImage('assets/mainbackground.jpg'),
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
                      MaterialPageRoute(builder: (context) => ActivitiesPage()),
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
                      MaterialPageRoute(builder: (context) => SpaAndRelaxPageClass()),
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
                      MaterialPageRoute(builder: (context) => CarouselDemo()),
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



