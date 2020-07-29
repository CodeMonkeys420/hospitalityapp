import 'package:flutter/material.dart';
import 'package:hospitalityapp/LoginAndRegister/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    home: SignIn(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.deepOrange,
  accentColor: Colors.grey,
);
