import 'file:///C:/Users/Mario/Desktop/hospitalityapp/hospitalityapp/lib/MainPage.dart';
import 'package:flutter/material.dart';


class RegisterClass extends StatefulWidget {

  final Function toggleView;
  RegisterClass({this.toggleView});

  @override
  _RegisterClassState createState() => _RegisterClassState();
}

class _RegisterClassState extends State<RegisterClass> {

//  final AuthService _auth = AuthService();
//  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  //textfield state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(""),//background
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.blue[400],
          elevation: 1.0,
          title: Text('Sign Up to Hospitality App'),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.home),
              label: Text(''),
              onPressed: () {
                widget.toggleView();
              },
            ),

          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 50),
            child: Form(
//              key: _formkey,
              child: Column(
                children: <Widget>[
                  Image.asset(''),
                  SizedBox(height: 20.0,),
                  TextFormField(
                      decoration: InputDecoration(hintText: 'Email',),
                      validator: (val) => val.isEmpty ? 'Enter a email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      }
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                      decoration: InputDecoration(hintText: 'Password',),
                      validator: (val) => val.length <6 ? 'Longer password needed' : null,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() => password = val);
                      }
                  ),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    color: Colors.red[500],
                    child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white)
                    ),
                    onPressed: () async{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPageClass()),
                      );
                      // else{
                      //   print('please use correct email or password')
                      // }
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize:14),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
