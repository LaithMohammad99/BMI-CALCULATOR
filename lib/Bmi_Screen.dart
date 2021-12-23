import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bmi_Resuilt.dart';

class Bmi_Calcoluter extends StatefulWidget {
  @override
  _Bmi_CalcoluterState createState() => _Bmi_CalcoluterState();
}

class _Bmi_CalcoluterState extends State<Bmi_Calcoluter> {
  bool isMale = true;
  double height = 120.0;
  int wight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.black12 : Colors.white30),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('images/fmail2.jpg'),
                              height: 90,
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.white30 : Colors.black12),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'images/e.png',
                              ),
                              height: 90,
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('FeMale',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white30),
                  child: Column(
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                          print(value.round());
                        },
                        max: 220.0,
                        min: 80.0,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'age--',
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: 'age++',
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WIEGHT',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '${wight}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'wight--',
                                onPressed: () {
                                  setState(() {
                                    wight--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: 'wight++ ',
                                onPressed: () {
                                  setState(() {
                                    wight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: MaterialButton(
              onPressed: () {
                var result = wight / pow(height / 100, 2).round();
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResuilt(
                      resuilt: result,
                      Age: age,
                      isMale: isMale,
                    ),
                  ),
                );
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              height: 45,
            ),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
