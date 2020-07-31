import 'file:///C:/Users/Mario/Desktop/hospitalityapp/hospitalityapp/lib/MainPage.dart';
import 'package:flutter/material.dart';

import 'GeneratedCardPage.dart';
import 'RestuarantPage.dart';


class PromotionsPage extends StatefulWidget {

//  final Function toggleView;
//  PromotionsPage({this.toggleView});

  @override
  _PromotionsPageState createState() => _PromotionsPageState();
}

class _PromotionsPageState extends State<PromotionsPage> {
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
          title: const Text('Promotions Page'),
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
                          MaterialPageRoute(builder: (context) => GeneratedPage()),
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
                            Image.asset('assets/RedDot_Burger.jpg'),
                            SizedBox(height: 12.0,),
                            ListTile(
                              title: Text("Chilly Burger"),

                              subtitle: Text("Made of the coast of Costa Rica, this burger is one of the hottest burgers in the world according to doctor pepper."),
//                              trailing: PopupMenuButton(
//                                // onSelected: _onSelected,
//                                icon: Icon(Icons.menu),
//                                itemBuilder: (context) => [
//
//                                  PopupMenuItem(
//                                    //value: posts.DocIdPost,
//                                    child: Text("View"),
//
//                                  ),
//                                ],
//                              ),
                            ),
                            SizedBox(height: 16.0,),
                          ],

                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GeneratedPage()),
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
                            Image.asset('assets/RedDot_Burger.jpg'),
                            SizedBox(height: 12.0,),
                            ListTile(
                              title: Text("Chilly Burger"),

                              subtitle: Text("Made of the coast of Costa Rica, this burger is one of the hottest burgers in the world according to doctor pepper."),
//                              trailing: PopupMenuButton(
//                                // onSelected: _onSelected,
//                                icon: Icon(Icons.menu),
//                                itemBuilder: (context) => [
//
//                                  PopupMenuItem(
//                                    //value: posts.DocIdPost,
//                                    child: Text("View"),
//
//                                  ),
//                                ],
//                              ),
                            ),
                            SizedBox(height: 16.0,),
                          ],

                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GeneratedPage()),
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
                            Image.asset('assets/RedDot_Burger.jpg'),
                            SizedBox(height: 12.0,),
                            ListTile(
                              title: Text("Chilly Burger"),

                              subtitle: Text("Made of the coast of Costa Rica, this burger is one of the hottest burgers in the world according to doctor pepper."),
//                              trailing: PopupMenuButton(
//                                // onSelected: _onSelected,
//                                icon: Icon(Icons.menu),
//                                itemBuilder: (context) => [
//
//                                  PopupMenuItem(
//                                    //value: posts.DocIdPost,
//                                    child: Text("View"),
//
//                                  ),
//                                ],
//                              ),
                            ),
                            SizedBox(height: 16.0,),
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
