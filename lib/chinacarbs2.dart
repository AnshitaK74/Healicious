import 'package:flutter/material.dart';
import 'package:recepie_app/bao.dart';
import 'package:recepie_app/duck.dart';
import 'package:recepie_app/honey.dart';
import 'package:recepie_app/noodles2.dart';

class chinacarbs2 extends StatefulWidget {
  const chinacarbs2({super.key});

  @override
  State<chinacarbs2> createState() => _chinacarbs2State();
}

class _chinacarbs2State extends State<chinacarbs2> {
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
          'Refined Carbs',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => BaoBun()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/bun.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Bao Buns',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PekingDuck()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/duck.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Peking Duck',
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

            SizedBox(height: screenHeight * 0.025),

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
                              MaterialPageRoute(
                                  builder: (context) => HoneyWalnutShrimp()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/00.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Honey Walnut Shrimp',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Noodles2()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/99.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Noodles',
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
