// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:bmiapp/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  bool maleTrue;
  double height;
  double result;

  ResultScreen(
    this.maleTrue,
    this.height,
    this.result,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondcolor,
        title: Center(
          child: Text(
            'RESULT',
            style: TextStyle(fontFamily: 'TiltNeon'),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GENDER : ${maleTrue ? 'MALE' : 'FEMALE'}',
              style: TextStyle(
                fontFamily: 'TiltNeon',
                fontSize: 20,
              ),
            ),
            Text(
              'HEIGHT : ${height.round()}',
              style: TextStyle(
                fontFamily: 'TiltNeon',
                fontSize: 20,
              ),
            ),
            Text(
              'RESULT : ${result.round()}',
              style: TextStyle(
                fontFamily: 'TiltNeon',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
