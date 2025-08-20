import 'package:flutter/material.dart';
import 'package:recepie_app/cookies.dart';
import 'package:recepie_app/dim%20sum.dart';
import 'package:recepie_app/lo%20mein.dart';
import 'package:recepie_app/pazzta.dart';
import 'package:recepie_app/potatoes.dart';
import 'package:recepie_app/rice.dart';
import 'package:recepie_app/sweet.dart';
import 'package:recepie_app/wontonsoup.dart';

class highgichina extends StatefulWidget {
  const highgichina({super.key});

  @override
  State<highgichina> createState() => _highgichinaState();
}

class _highgichinaState extends State<highgichina> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.4;
    final cardRadius = screenWidth * 0.025;

    final titleFontSize = screenWidth * 0.08;
    final subtitleFontSize = screenWidth * 0.05;
    final textFontSize = screenWidth * 0.035;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High GI',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: titleFontSize,
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
                    fontSize: subtitleFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.025),

            // Row 1
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
                            MaterialPageRoute(builder: (context) => wontonSoup()),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/g.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Wonton Soup',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: textFontSize,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => dimSumInfo()),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/h.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Dim Sum',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: textFontSize,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: screenHeight * 0.02),

            // Row 2
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
                            MaterialPageRoute(builder: (context) => loMeinInfo()),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/i.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Lo Mein',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: textFontSize,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => sweetSourChickenInfo(),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/j.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Sweet and Sour Chicken',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: textFontSize,
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
