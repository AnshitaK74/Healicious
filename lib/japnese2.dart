import 'package:flutter/material.dart';
import 'package:recepie_app/diabetesavoid.dart';
import 'package:recepie_app/digestionavoid.dart';
import 'package:recepie_app/gutjapan.dart';

import 'package:recepie_app/liveravoid.dart';
import 'package:recepie_app/obeseavoidjapan.dart';
import 'package:recepie_app/obesity%20avoid.dart';
import 'package:recepie_app/pcos%20avoid.dart';
import 'package:recepie_app/pcosavoid2.dart';

class japnese2 extends StatefulWidget {
  const japnese2({super.key});

  @override
  State<japnese2> createState() => _japnese2State();
}

class _japnese2State extends State<japnese2> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diseases',
          style: TextStyle(
            fontSize: screenWidth * 0.08,
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => pcosavoid2()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets/images/img_27.png',
                              fit: BoxFit.cover,
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'PCOS',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => obeseavoidjapan()));
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets/images/img_29.png',
                              fit: BoxFit.cover,
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'obesity',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => diabetesavoid()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets/images/img_31.png',
                              fit: BoxFit.cover,
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Diabetes',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => gutjapan()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets/images/img_33.png',
                              fit: BoxFit.cover,
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Gut problem',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
