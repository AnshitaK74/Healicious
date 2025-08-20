import 'package:flutter/material.dart';
import 'package:recepie_app/bbb.dart';
import 'package:recepie_app/chinabeer.dart';
import 'package:recepie_app/huang.dart';
import 'package:recepie_app/miju.dart';

class chinalcohol2 extends StatefulWidget {
  const chinalcohol2({super.key});

  @override
  State<chinalcohol2> createState() => _chinalcohol2State();
}

class _chinalcohol2State extends State<chinalcohol2> {
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
          'Alcohol',
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
                  'Alcohols To Avoid',
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
                            MaterialPageRoute(builder: (context) => BeerPage()),
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
                              'assets7/images7/d.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Beer',
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
                            MaterialPageRoute(builder: (context) => MijiuPage()),
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
                              'assets7/images7/c.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Mijiu',
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
                            MaterialPageRoute(builder: (context) => HuangjiuPage()),
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
                              'assets7/images7/b.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Huangjiu',
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
                            MaterialPageRoute(builder: (context) => BaijiuPage()),
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
                              'assets7/images7/a.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Baijiu',
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
