import 'package:flutter/material.dart';
import 'MainPage.dart';



class ActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accommodation Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ActivitiesPageClass(title: 'Accommodation Page'),
    );
  }
}

class ActivitiesPageClass extends StatefulWidget {
  ActivitiesPageClass({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ActivitiesPageClassState createState() => _ActivitiesPageClassState();
}

class _ActivitiesPageClassState extends State<ActivitiesPageClass> {


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
          title: const Text('Activities'),
        ),
        body:SingleChildScrollView( child: Center(
            child: Column(
                children: <Widget>[
new GestureDetector(
  onTap: (){
Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivitiesDetails()),
                    );


  },
      child:            Card(
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
                  )),
                new GestureDetector(
  onTap: (){
Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivitiesDetails()),
                    );


  },
      child:       Card(
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
                  )),
          new GestureDetector(
  onTap: (){
Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivitiesDetails()),
                    );

  },
      child:          Card(
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
                  )),
                ] )))
    );
  }
}







class ActivitiesDetails extends StatefulWidget {
  @override
  _ActivitiesDetails createState() => _ActivitiesDetails();
}

class _ActivitiesDetails extends State<ActivitiesDetails> {
  @override
  Widget build(BuildContext context) {

   return new  Scaffold(
appBar: AppBar(
title: Text('Details'),

),
body: GridView.count(
crossAxisCount: 1,

 children: List.generate(1, (index)
          {


        return new Column(
            children: <Widget>[

              Text(
                'Activity Name',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ), 
               
              SizedBox(
              child: Text(
                  'Details about the activity',
                  textAlign: TextAlign.left,
                  
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                ),
              ),
               SizedBox(
              child: Text(
                  'Time slots/calendar',
                  textAlign: TextAlign.left,
                  
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                ),
              ),

              

            ]);



          })

),

    );
  }


}