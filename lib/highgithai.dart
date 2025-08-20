import 'package:flutter/material.dart';
import 'package:recepie_app/kanomkrok.dart';
import 'package:recepie_app/khao.dart';
import 'package:recepie_app/padthai.dart';
import 'package:recepie_app/stickyrice.dart';

class highgithai extends StatefulWidget {
  const highgithai({super.key});

  @override
  State<highgithai> createState() => _highgithaiState();
}

class _highgithaiState extends State<highgithai> {
  @override
  Widget build(BuildContext context) {
    // Responsive measurements
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final horizontalPadding = screenWidth * 0.05; // 5% of width
    final imageHeight = screenHeight * 0.25;      // 25% of height
    final imageWidth = screenWidth * 0.4;         // 40% of width
    final borderRadius = screenWidth * 0.025;     // 2.5% of width
    final fontSizeTitle = screenWidth * 0.08;     // 8% of width
    final fontSizeSubtitle = screenWidth * 0.05;  // 5% of width
    final fontSizeText = screenWidth * 0.035;     // 3.5% of width
    final spacingSmall = screenHeight * 0.01;     // small gap
    final spacingMedium = screenHeight * 0.02;    // medium gap

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High GI',
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
            // Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => padthai()),
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
                            'assets6/images6/ola.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Pad thai',
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
                          MaterialPageRoute(builder: (context) => kanomkrok()),
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
                            'assets6/images6/coco.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Kanom Krok',
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
            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => khaopad()),
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
                            'assets6/images6/khao.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Khao pad',
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
                          MaterialPageRoute(builder: (context) => thaistickyrice()),
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
                            'assets6/images6/thai.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Thai sticky rice',
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
