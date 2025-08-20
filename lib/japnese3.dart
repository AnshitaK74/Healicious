import 'package:flutter/material.dart';
import 'package:recepie_app/thai%20gut.dart';
import 'package:recepie_app/thaiavoid.dart';
import 'package:recepie_app/thaidiabetesto%20avoid.dart';
import 'package:recepie_app/thaidiabetes.dart';
import 'package:recepie_app/thaigut.dart';
import 'package:recepie_app/thaiobeseavoid.dart';

class japnese3 extends StatefulWidget {
  const japnese3({super.key});

  @override
  State<japnese3> createState() => _japnese3State();
}

class _japnese3State extends State<japnese3> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final padding = screenWidth * 0.025;
    final borderRadius = screenWidth * 0.025;
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.35;
    final titleFontSize = screenWidth * 0.08;
    final labelFontSize = screenWidth * 0.045;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diseases',
          style: TextStyle(
            fontSize: titleFontSize,
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row 1
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(padding),
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
                                  builder: (context) => thaiavoid()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets/images/img_27.png',
                              fit: BoxFit.cover,
                              height: imageHeight,
                              width: imageWidth,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'PCOS',
                        style: TextStyle(
                          fontSize: labelFontSize,
                          color: Colors.green.shade800,
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
                              MaterialPageRoute(builder: (context) => thai()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets/images/img_29.png',
                              fit: BoxFit.cover,
                              height: imageHeight,
                              width: imageWidth,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Obesity',
                        style: TextStyle(
                          fontSize: labelFontSize,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Row 2
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(padding),
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
                                  builder: (context) => thaidavoid()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets/images/img_31.png',
                              fit: BoxFit.cover,
                              height: imageHeight,
                              width: imageWidth,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Diabetes',
                        style: TextStyle(
                          fontSize: labelFontSize,
                          color: Colors.green.shade800,
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
                              MaterialPageRoute(builder: (context) => Thai2()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets/images/img_33.png',
                              fit: BoxFit.cover,
                              height: imageHeight,
                              width: imageWidth,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Gut problem',
                        style: TextStyle(
                          fontSize: labelFontSize,
                          color: Colors.green.shade800,
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
