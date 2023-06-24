// ignore_for_file: prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors, must_be_immutable

import 'dart:math';

import 'package:bmiapp/ResultScreen.dart';
import 'package:bmiapp/colors.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool maleTrue = true;

  double height = 170;

  double weight = 80;

  double age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondcolor,
      ),
      body: Column(
        children: [
          //! part number 1
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  //! Male part
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          maleTrue = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: maleTrue ? secondcolor : Colors.white,
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('images/male.png'),
                              width: 150,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'TiltNeon'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  //! Female part
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          maleTrue = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: !maleTrue ? secondcolor : Colors.white,
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('images/female.png'),
                              width: 150,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'TiltNeon'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //! part number 2
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: secondcolor, width: 10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'TiltNeon'),
                    ),
                    SizedBox(height: 10),
                    //! what's your height
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TiltNeon'),
                        ),
                      ],
                    ),

                    Slider(
                      activeColor: secondcolor,
                      inactiveColor: secondcolor,
                      thumbColor: firstcolor,
                      label: 'Your Height is :',
                      value: height,
                      max: 220,
                      min: 120,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          //! part number 3
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  //! weight
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: secondcolor, width: 10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '${weight.round()}',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'KG',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'TiltNeon'),
                              ),
                            ],
                          ),
                          Slider(
                            activeColor: secondcolor,
                            inactiveColor: secondcolor,
                            thumbColor: firstcolor,
                            label: 'Your Height is :',
                            value: weight,
                            max: 220,
                            min: 1,
                            onChanged: (value) {
                              setState(() {
                                weight = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  //! age
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: secondcolor, width: 10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '${age.round()}',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'YO',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'TiltNeon'),
                              ),
                            ],
                          ),
                          Slider(
                            activeColor: secondcolor,
                            inactiveColor: secondcolor,
                            thumbColor: firstcolor,
                            label: 'Your Height is :',
                            value: age,
                            max: 120,
                            min: 1,
                            onChanged: (value) {
                              setState(() {
                                age = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //! part number 4
          Container(
            color: secondcolor,
            height: 60,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);

                setState(() {});

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              maleTrue,
                              height,
                              result,
                            )));
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiltNeon'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
