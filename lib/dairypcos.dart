import 'package:flutter/material.dart';
import 'package:recepie_app/butter2.dart';
import 'package:recepie_app/cheese2.dart';
import 'package:recepie_app/fullfatmilk.dart';
import 'package:recepie_app/tofu.dart';
import 'package:recepie_app/cheese.dart';
import 'package:recepie_app/butter.dart';
import 'package:recepie_app/tofu101.dart';

class dairypcos extends StatefulWidget {
  const dairypcos({super.key});

  @override
  State<dairypcos> createState() => _dairypcosState();
}

class _dairypcosState extends State<dairypcos> {
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
          'Dairy',
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
                  'Dairy To Avoid',
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
                                  builder: (context) => FullFatMilk()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/milk.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'Full Fat Milk',
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
                              MaterialPageRoute(builder: (context) => TofuPCOS()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/tofu.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'Tofu',
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
                              MaterialPageRoute(builder: (context) => CheeseImpact()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets16/images16/cheese.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'Cheese',
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
                              MaterialPageRoute(builder: (context) => bu()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/butter.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text(
                        'Butter',
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
