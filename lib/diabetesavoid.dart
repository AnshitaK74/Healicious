import 'package:flutter/material.dart';
import 'package:recepie_app/alcohol.dart';
import 'package:recepie_app/fridayjapan.dart';
import 'package:recepie_app/highgijapandiabetes.dart';
import 'package:recepie_app/japanhighgi2.dart';
import 'package:recepie_app/japansugardiabetes.dart';
import 'package:recepie_app/mondaydiabetesjapan.dart';
import 'package:recepie_app/procesjapan11.dart';
import 'package:recepie_app/saturdaydiabetes.dart';
import 'package:recepie_app/sugardiabetesjapan.dart';
import 'package:recepie_app/tuesdaydiabetes.dart';


import 'package:recepie_app/wednesdayjapan.dart';
import 'package:recepie_app/thursdaydiabetesjapan.dart';

import 'package:recepie_app/ultrajapan.dart';

class diabetesavoid extends StatefulWidget {
  const diabetesavoid({super.key});

  @override
  State<diabetesavoid> createState() => _diabetesavoidState();
}

class _diabetesavoidState extends State<diabetesavoid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diabetes',
          style: TextStyle(
            fontSize: width * 0.07,
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Food categories To Avoid',
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => highgijapan11()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets2/images2/paazta.jpeg',
                            height: height * 0.28,
                            width: width * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('High GI',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => highgijapan12()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets5/images5/daifuku.jpeg',
                            height: height * 0.28,
                            width: width * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('Sugary Food',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04))
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => highgijapan13()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets13/images13/l.jpeg',
                            height: height * 0.28,
                            width: width * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('Ultra Process Food',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => alcohol()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets13/images13/m.jpeg',
                            height: height * 0.28,
                            width: width * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('Alcohol',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04)),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'DIET PLAN',
                style: TextStyle(
                  fontSize: width * 0.07,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => mondaydiabetesjapan()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets5/images5/mix.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Monday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => tuesdaydiabetesjapan()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets16/images16/udon1.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Tuesday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => wednesdaydiabetesjapan()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets16/images16/op.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Wednesday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => thursdaydiabetesjapan()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets16/images16/999.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Thursday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => fridaydiabetesjapan()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets16/images16/img_1.png',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Friday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => saturdaydiabetesjapan()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets16/images16/su.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Saturday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
