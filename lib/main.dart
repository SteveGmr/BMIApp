// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'BmiScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}



//my name is smou3lih 
//and this is my first time using github