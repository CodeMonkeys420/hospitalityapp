import 'package:flutter/material.dart';
import '../main.dart';
import 'package:hospitalityapp/MainMenuPage/MainPage.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
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
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(""),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.blue[400],
          elevation: 1.0,
          title: Text('Sign in to Hospitality App'),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('Register'),
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
                  Image.asset('Assets/vdv.png'),
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
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Password',),
                      validator: (val) => val.length <6 ? 'Enter a password' : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      }
                  ),
                  SizedBox(height: 20.0,),
                  RaisedButton(
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
                  ),
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