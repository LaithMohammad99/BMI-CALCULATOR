import 'package:flutter/material.dart';


class BMIResuilt extends StatelessWidget {
  final double resuilt;

  final bool isMale;

  final int Age;

  BMIResuilt({required this.resuilt, required this.isMale,required this.Age});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Text(
          'BMI RESUILT',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Container(
            width: double.infinity,
            color: Colors.white30 ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'THE RESUILT IS',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600,color: Colors.white),
                  ),
                ),


                Text(
                  'Gender:${isMale?'Male':'Female' }',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Text(
                  'Resuilt:$resuilt',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Text(
                  'Age:$Age',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
