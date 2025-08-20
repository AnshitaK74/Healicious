import 'package:flutter/material.dart';
import 'package:recepie_app/clon.dart';
import 'package:recepie_app/khai.dart';
import 'package:recepie_app/khao2.dart';
import 'package:recepie_app/kluaythai.dart';
import 'package:recepie_app/pohthai.dart';
import 'package:recepie_app/todthai.dart';

class deepfriedthai extends StatefulWidget {
  const deepfriedthai({super.key});

  @override
  State<deepfriedthai> createState() => _deepfriedthaiState();
}

class _deepfriedthaiState extends State<deepfriedthai> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final horizontalPadding = screenWidth * 0.05;
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.4;
    final borderRadius = screenWidth * 0.025;
    final fontSizeTitle = screenWidth * 0.08;
    final fontSizeSubtitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.035;
    final spacingSmall = screenHeight * 0.01;
    final spacingMedium = screenHeight * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deep Fried',
          style: TextStyle(
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(horizontalPadding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food Categories To Avoid',
                  style: TextStyle(
                    fontSize: fontSizeSubtitle,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: spacingMedium),
            // First row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => kluayThai()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/old.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Kluay Tod',
                      style: TextStyle(
                        fontSize: fontSizeText,
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
                            MaterialPageRoute(builder: (context) => todMunGoong()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/hot.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Tod Mun Goong',
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: spacingMedium),
            // Second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => khaoNeowTod()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/byy.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Khao neow Tod',
                      style: TextStyle(
                        fontSize: fontSizeText,
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
                            MaterialPageRoute(builder: (context) => khaiJiao()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/clon.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Khai Jiao',
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: spacingMedium),
          ],
        ),
      ),
    );
  }
}
