// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:chat/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
     theme: ThemeData(
      primaryColor: Colors.red,
      accentColor: Color.fromRGBO(254, 249, 235, 1),
      //fontFamily: "Helvetica Neue Medium Extended",

     ),
      home:home(),
    );
     }}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
