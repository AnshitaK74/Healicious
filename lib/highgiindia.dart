import 'package:flutter/material.dart';
import 'package:recepie_app/bread4.dart';
import 'package:recepie_app/cookies.dart';
import 'package:recepie_app/dim%20sum.dart';
import 'package:recepie_app/indiamaida.dart';
import 'package:recepie_app/indiarice.dart';
import 'package:recepie_app/lo%20mein.dart';
import 'package:recepie_app/mm.dart';
import 'package:recepie_app/pazzta.dart';
import 'package:recepie_app/poha.dart';
import 'package:recepie_app/potatoes.dart';
import 'package:recepie_app/rice.dart';
import 'package:recepie_app/sweet.dart';
import 'package:recepie_app/wontonsoup.dart';

class highgiindia extends StatefulWidget {
  const highgiindia({super.key});

  @override
  State<highgiindia> createState() => _highgiindiaState();
}

class _highgiindiaState extends State<highgiindia> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'High GI',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.08,
              color: Colors.green.shade800,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.015,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Food  To Avoid',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => riceq()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/rice.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'White Rice',
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => poha()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/poha.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Poha ',
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => maidaScreen11()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/miada.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Maida',
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => breadx()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/bread3.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Bread',
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
        )
    );
  }
}
