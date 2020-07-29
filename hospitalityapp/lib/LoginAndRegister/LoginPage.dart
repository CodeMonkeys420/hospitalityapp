import 'package:flutter/material.dart';
import '../main.dart';
import 'package:hospitalityapp/MainMenuPage/MainPage.dart';
import 'package:nice_button/nice_button.dart';

import 'RegisterPage.dart';
var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);
class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class _SignInState extends State<SignIn> {

//  final AuthService _auth = AuthService();
//  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  //textfield state
  String email = '';
  String password = '';
  String error = '';

//  Widget build(BuildContext context) {
//    return loading ? Loading() : Container(
//        decoration: new BoxDecoration(
//          image: new DecorationImage(
//            image: new AssetImage(""),
//            fit: BoxFit.fill,
//          ),
//        ),

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://lh3.googleusercontent.com/Kqni3QLq83kba-vJUrqN6l06Lu1aAKjlC07L01F3GTPp9ZD5wQcRNaSSI7sjLO5kiA'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
                  MaterialPageRoute(builder: (context) => RegisterClass()),
                );
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
                      Material(
                        child: new Container (
                          padding: const EdgeInsets.all(30.0),
                           color: Colors.white,
                         child: new Container(
                          child: new Center(
                            child: new Column(
                                children : [

                                    Padding(padding: EdgeInsets.only(top: 140.0)),
                                        Text('Login to The Hospitality App',
                                        style: TextStyle(color: hexToColor("#00000000"), fontSize: 25.0),),
                                        Padding(padding: EdgeInsets.only(top: 50.0)
                                    ),

                                TextFormField(
                                      decoration: InputDecoration(
                                      labelText: "Enter Email",
                                      fillColor: Colors.transparent,
                                      border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                      ),
                                      ),
                                      //fillColor: Colors.green
                                      ),
                                      validator: (val) {
                                      if(val.length==0) {
                                      return "Email cannot be empty";
                                      }else{
                                      return null;
                                      }
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                      fontFamily: "Poppins",
                                      ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Enter Password",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(25.0),
                                          borderSide: BorderSide(
                                          ),
                                        ),
                                        //fillColor: Colors.green
                                      ),
                                      validator: (val) {
                                        if(val.length==0) {
                                          return "Password cannot be empty";
                                        }else{
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.visiblePassword,
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                ]
                               ),
                            ),
                         ),
                       ),
                      ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: NiceButton(
                      radius: 40,
                      padding: const EdgeInsets.all(15),
                      text: "Sign In",
//                icon: Icons.account_box,
                      gradientColors: [secondColor, firstColor],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPageClass()),
                        );
                      },
                    ),
                  ),
/*                  RaisedButton(
                    color: Colors.red[500],
                    child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white)
                    ),

//                    onPressed: () async{
//                      if(_formkey.currentState.validate()){
//                        setState(() => loading = true) ;
//                        dynamic result = await _auth.signInWithEmailAndPassword(email, password);
//                        if(result == null){
//                          setState(() {
//                            setState(() => loading = false) ;
//                            error = 'Could not sign in with those credentials';
//                          } );
//                        }
//                      }
//                    },
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPageClass()),
                      );
                    },
                  ),*/
                  SizedBox(height: 20),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize:14),),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}