import 'package:flutter/material.dart';
import 'package:recepie_app/mexican%20obese%20avoid.dart';
import 'package:recepie_app/mexicandiabetesavoid.dart';
import 'package:recepie_app/mexicanpcos.dart';

import 'package:recepie_app/mexicangut.dart';

class japnease5 extends StatefulWidget {
  const japnease5({super.key});

  @override
  State<japnease5> createState() => _japnease5State();
}

class _japnease5State extends State<japnease5> {
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
                  // PCOS Card
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mexicanpcos()),
                          );
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
                  // Obesity Card
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mexicanobese()),
                          );
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
                  // Diabetes Card
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mexicandiabetes()),
                          );
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
                  // Gut Problem Card
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mexicangut()),
                          );
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
