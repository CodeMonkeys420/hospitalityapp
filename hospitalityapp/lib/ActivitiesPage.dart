import 'package:flutter/material.dart';
import 'MainPage.dart';
//import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'dart:math';
import 'package:intl/intl.dart' show DateFormat;
import 'package:spinner_input/spinner_input.dart';
import 'package:card_settings/card_settings.dart';


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
                     child: Card(
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
                              onPressed: () {

                                      Navigator.push(
                                          context,
                                           MaterialPageRoute(builder: (context) => bookSpot()),
                    );
                              },
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
                              onPressed: () {

                                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bookSpot()),
                    );
                              },
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
                              onPressed: () {
          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bookSpot()),
                    );

                              },
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
       actions: <Widget>[

       ],
       backgroundColor: Colors.deepPurple,
       elevation: 1.0,
       title: const Text('Activity Details'),
     ),
      body: GridView.count(
      crossAxisCount: 1,

       children: List.generate(1, (index)
                {


        return new Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Activity Name',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ), 
               
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                child: Text(
                    'Details about the activity',
                    textAlign: TextAlign.left,

                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                  ),
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


String sanitizeDateTime(DateTime dateTime) => "${dateTime.year}-${dateTime.month}-${dateTime.day}";
var time;
Set<String> getDateSet(List<DateTime> dates) => dates.map(sanitizeDateTime).toSet();
String dropdownValue = '10:00';
 final formatH = DateFormat("yyyy-MM-dd");


class bookSpot extends StatefulWidget {
  @override
  bookSpotState createState() => bookSpotState();
}


/* class bookSpotState extends State<bookSpot> {


  @override
  Widget build(BuildContext context) {


      return 
       new Scaffold(
        
            appBar: AppBar(
              title: Text("Book"),


            ),
            body: GridView.count(

              crossAxisCount: 1,

              children: List.generate(1, (index)
              {
               
                                var value;
                                                                return Center(
                                                                    child:
                                                                    new Column(
                                                                        children: <Widget>[
                                                
                                                                          TextFormField(
                                                                            decoration: InputDecoration(labelText: 'Enter Full Name'
                                                                            ),
                                                                          
                                                                            /* initialValue: name,*/
                                                                          )
                                                                        ,
                                                                        TextFormField(
                                                                            decoration: InputDecoration(labelText: 'Enter cell number'
                                                                            ),
                                                                          
                                                                            /* initialValue: name,*/
                                                                          ),
                                                
                                                                              Container(
                                                                            margin: EdgeInsets.all(20),
                                                                            child: new Column(
                                                                                children: <Widget>[
                                                
                                                                             new Text('Ammount of people'),
                                                
                                                                           new  SpinnerInput(
                                                
                                                
                                                                              spinnerValue: value,
                                              minValue: 1,
                                              maxValue: 20,
                
                
                
                                              onChange: (newValue) {
                                                value = newValue;
                                                },
                                         ),
                              ])
                
                                          ),
                
                 Column(children: <Widget>[
                
                                            DateTimeField(
                
                                              format: formatH,
                                              decoration: InputDecoration(labelText: 'Choose a date '),
                                              onShowPicker: (context, currentValue) async {
                
                                                final date = await showDatePicker(
                                                    context: context,
                                                    firstDate: DateTime.now(),
                                                  initialDate: currentValue ?? DateTime.now(),
                                                
                                                    lastDate: DateTime(2400));
                
                
                                                if (date != null) {
                                                  
                                               
                                                 
                                                  return date;
                                                } else {
                
                                                  return currentValue;
                                                }
                
                
                                                
                
                                              },
                                            ),
                
                                            Row( children: <Widget>[
                
                                              Text('Choose Time slot:  '),
                                            DropdownButton<String>(
                
                                            icon: Icon(Icons.arrow_downward),
                                            value: dropdownValue,
                            iconSize: 24,
                            elevation: 20,
                            style:

                            TextStyle(
                                color: Colors.deepPurple
                            ),
                            underline: Container(
                              height: 2,
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                                time = dropdownValue.toString();



                              });
                            },
                            items: <String>['08:00', '08:15', '08:30', '08:45', '09:00', '09:15', '09:30',
                              '09:45', '10:00', '10:15', '10:30', '10:45','11:00','11:15','11:30','11:45','12:00',
                              '12:15','12:30','12:45','13:00','13:15','13:30','13:45','14:00','14:15','14:30','14:45','15:00'
                              ,'15:15','15:30','15:45','16:00']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                                .toList(),
                          )
                                                 ,

                                        ])

                          ]),






                        ]));



              }),
            ));}

} */

class bookSpotState extends State<bookSpot> {

int ammountPeople = 1;
   String title = "";
    int phoneNum = 0;  
  String url = "http://www.codyleet.com/spheria";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
   return 
   
    new Scaffold(
        
            appBar: AppBar(
              title: Text("Booking Form"),


            ),
            body:Form(
        key: _formKey,
        child: CardSettings(
          children: <CardSettingsSection>[
            CardSettingsSection(
              header: CardSettingsHeader(
                label: 'Personal Information',
              ),
              children: <CardSettingsWidget>[
                CardSettingsText(
                  label: 'Full name',
                  initialValue: title,
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Name is required.';
                  },
                  onSaved: (value) => title = value,
                ),
                CardSettingsNumberPicker(
     
      label: 'Ammount of people',
      
      initialValue: ammountPeople,
      min: 1,
      max: 10,
      stepInterval: 1,
      validator: (value) {
        if (value == null) return 'Ammount of people is required.';
     
        return null;
      },
      onSaved: (value) => {},
      onChanged: (value) {
        setState(() {
         ammountPeople = value;
        });
       
      },
    ),


     CardSettingsPhone(
      label: 'Phone number',
      initialValue: phoneNum,
      autovalidate: false,
      validator: (value) {
        return null;
      },
      onSaved: (value) => {},
      onChanged: (value) {
        setState(() {
          phoneNum= value;
        });
        
      },
    ),


     CardSettingsTimePicker(
     
      icon: Icon(Icons.access_time),
      label: 'Time',
      initialValue: TimeOfDay(
          hour: 12 ,
          minute:00 ),
      onSaved: (value) => {},
      onChanged: (value) {
        setState(() {
         
        });
       
      },
    ),


    CardSettingsDatePicker(
      
      icon: Icon(Icons.calendar_today),
      label: 'Date',
      dateFormat: DateFormat.yMMMMd(),
      initialValue: DateTime.now(),
      onSaved: (value) => {},
      onChanged: (value) {
        setState(() {
          
        });
       
      },
    )
              ],
            ),
          ])
        ));
//gddgfggdsg
}}