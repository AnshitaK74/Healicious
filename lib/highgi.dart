import 'package:flutter/material.dart';
import 'package:recepie_app/refined%20flour%20page.dart';
import 'package:recepie_app/samolina.dart';
import 'package:recepie_app/soya.dart';
import 'package:recepie_app/white rice.dart';

class highgi extends StatefulWidget {
  const highgi({super.key});

  @override
  State<highgi> createState() => _highgiState();
}

class _highgiState extends State<highgi> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final horizontalPadding = screenWidth * 0.05; // 5% padding
    final imageHeight = screenHeight * 0.25;       // 25% height for images
    final imageWidth = screenWidth * 0.4;          // 40% width for images
    final borderRadius = screenWidth * 0.025;      // 2.5% radius
    final fontSizeTitle = screenWidth * 0.08;      // 8% width
    final fontSizeSubtitle = screenWidth * 0.05;   // 5% width
    final fontSizeText = screenWidth * 0.035;      // 3.5% width
    final spacingSmall = screenHeight * 0.01;      // small vertical spacing
    final spacingMedium = screenHeight * 0.02;     // medium vertical spacing

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High Gi',
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
                                  builder: (context) => RefinedFlourPCOS()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/img_16.png',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'Refined Flour',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: fontSizeText,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => soya()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/soya.webp',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'Soya',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: fontSizeText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: spacingMedium),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => samolina()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets16/images16/samolina.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'Samolina',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: fontSizeText,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => WhiteRice()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/img_17.png',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'White Rice',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: fontSizeText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: spacingMedium),
          ],
        ),
      ),
    );
  }
}
