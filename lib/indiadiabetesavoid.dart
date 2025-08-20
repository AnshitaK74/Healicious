import 'package:flutter/material.dart';
import 'package:recepie_app/artificial.dart';
import 'package:recepie_app/carbonated.dart';
import 'package:recepie_app/fattydigestion.dart';
import 'package:recepie_app/fridayindia.dart';
import 'package:recepie_app/frieddigestion.dart';
import 'package:recepie_app/highgiindia.dart';
import 'package:recepie_app/indianartificial.dart';
import 'package:recepie_app/indiandiabetesdrink.dart';
import 'package:recepie_app/indianfried2.dart';
import 'package:recepie_app/mondayindiagut.dart';
import 'package:recepie_app/saturdayindia.dart';
import 'package:recepie_app/thursdayindia.dart';
import 'package:recepie_app/tuesdayindiangut.dart';
import 'package:recepie_app/wednesdaygutindia.dart';

class indiadiabetes extends StatefulWidget {
  const indiadiabetes({super.key});

  @override
  State<indiadiabetes> createState() => _indiadiabetesState();
}

class _indiadiabetesState extends State<indiadiabetes> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Diabetes',
            style: TextStyle(
              fontSize: screenWidth * 0.08,
              color: Colors.green.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: screenHeight * 0.018),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Text(
                    'Food categories To Avoid',
                    style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.green.shade800),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(screenWidth * 0.025),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => highgiindia()));
                          },
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(screenWidth * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(screenWidth * 0.025),
                              child: Image.asset(
                                'assets2/images2/paazta.jpeg',
                                height: screenHeight * 0.25,
                                width: screenWidth * 0.35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('High GI',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.green.shade800))
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RefinedCarbsItems111()));
                          },
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(screenWidth * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(screenWidth * 0.025),
                              child: Image.asset(
                                'assets3/imgaes4/al.webp',
                                height: screenHeight * 0.25,
                                width: screenWidth * 0.35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('Carbonated beverages',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.green.shade800))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(screenWidth * 0.025),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => indianartificial()));
                          },
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(screenWidth * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(screenWidth * 0.025),
                              child: Image.asset(
                                'assets2/images2/sweet.jpeg',
                                height: screenHeight * 0.25,
                                width: screenWidth * 0.35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('Artificial sweetners',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.green.shade800))
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => indianfriedfoodsq()));
                          },
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(screenWidth * 0.025)),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(screenWidth * 0.025),
                              child: Image.asset(
                                'assets3/imgaes4/cook.jpg',
                                height: screenHeight * 0.25,
                                width: screenWidth * 0.35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('Fried Food',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.green.shade800)),
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
                        fontSize: screenWidth * 0.08,
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => mondayindia()));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth * 0.025)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          screenWidth * 0.025),
                                      child: Image.asset(
                                        'assets5/images5/eggroll.jpeg',
                                        height: screenHeight * 0.25,
                                        width: screenWidth * 0.35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Monday',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.green.shade800)),
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                tuesdaygutindian()));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth * 0.025)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          screenWidth * 0.025),
                                      child: Image.asset(
                                        'assets5/images5/matcha.webp',
                                        height: screenHeight * 0.25,
                                        width: screenWidth * 0.35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Tuesday',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.green.shade800)),
                              ],
                            ),
                          ])),
                  Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                wednesdaygutindian()));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth * 0.025)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          screenWidth * 0.025),
                                      child: Image.asset(
                                        'assets5/images5/edamame.jpg',
                                        height: screenHeight * 0.25,
                                        width: screenWidth * 0.35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('wednesday',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.green.shade800)),
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                thursdaygutindian()));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth * 0.025)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          screenWidth * 0.025),
                                      child: Image.asset(
                                        'assets5/images5/choy.jpeg',
                                        height: screenHeight * 0.25,
                                        width: screenWidth * 0.35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Thursday',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.green.shade800)),
                              ],
                            ),
                          ])),
                  Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                fridaygutindian()));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth * 0.025)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          screenWidth * 0.025),
                                      child: Image.asset(
                                        'assets5/images5/anko.jpeg',
                                        height: screenHeight * 0.25,
                                        width: screenWidth * 0.35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Friday',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.green.shade800)),
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                saturdaygutindian()));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth * 0.025)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          screenWidth * 0.025),
                                      child: Image.asset(
                                        'assets5/images5/boil.jpg',
                                        height: screenHeight * 0.25,
                                        width: screenWidth * 0.35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Saturday',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.green.shade800)),
                              ],
                            ),
                          ])),
                ],
              ),
            ])));
  }
}
