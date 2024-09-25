import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData dark = ThemeData(
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.blue[100],
    hintColor: Colors.grey,
    appBarTheme: AppBarTheme(
      titleSpacing: 1.0,
      backgroundColor: Colors.blue[300],
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.grey.withOpacity(0.2),
        statusBarIconBrightness: Brightness.light,
      ),
      elevation: 8.0,
      titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
    ),
    textTheme: TextTheme(
        bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    )));

ThemeData light = ThemeData(
  primaryColor: Colors.deepOrange,
  hintColor: Colors.grey,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.white,

  textTheme: TextTheme(
    bodyLarge: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0.28),
        statusBarIconBrightness: Brightness.light),
    // centerTitle: true,
    color: Colors.deepOrangeAccent,
    elevation: 5,
    titleTextStyle: TextStyle(
        color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
  ),
  // textTheme:  TextTheme(
  //   bodyMedium:  TextStyle(
  //     height: 1.5,
  //     fontSize: 15.0,
  //     color: Colors.white,
  //     fontWeight: FontWeight.bold,
  //   ),
  //
  // ),
);
