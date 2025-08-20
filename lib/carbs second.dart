import 'package:flutter/material.dart';
import 'package:recepie_app/cereals.dart';
import 'package:recepie_app/maida2.dart';
import 'package:recepie_app/maidaobese.dart';
import 'package:recepie_app/noodles.dart';
import 'package:recepie_app/white_bread.dart';
import 'package:recepie_app/maida.dart';

class carbssecond extends StatefulWidget {
  const carbssecond({super.key});

  @override
  State<carbssecond> createState() => _carbssecondState();
}

class _carbssecondState extends State<carbssecond> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Refined Carbs',
          style: TextStyle(
            fontSize: screenWidth * 0.08,
            fontWeight: FontWeight.bold,
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
                top: screenHeight * 0.02,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food To Avoid',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => whitebread()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets2/images2/images-12.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'White Bread',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => maidaScreen1()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets2/images2/maida.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Maida',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => cereals()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets2/images2/cc.avif',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Cereals',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => noodles()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets16/images16/43.webp',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Noodles',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
