import 'package:flutter/material.dart';
import 'package:recepie_app/Youtiao.dart';
import 'package:recepie_app/bubbletea.dart';
import 'package:recepie_app/char%20sieu.dart';
import 'package:recepie_app/cookies.dart';
import 'package:recepie_app/creamy.dart';
import 'package:recepie_app/dim%20sum.dart';
import 'package:recepie_app/dim.dart';
import 'package:recepie_app/hotpot.dart';
import 'package:recepie_app/lo%20mein.dart';
import 'package:recepie_app/naughtyamerica.dart';
import 'package:recepie_app/pazzta.dart';
import 'package:recepie_app/potatoes.dart';
import 'package:recepie_app/pudding.dart';
import 'package:recepie_app/r.dart';
import 'package:recepie_app/red.dart';
import 'package:recepie_app/rice.dart';
import 'package:recepie_app/rule.dart';
import 'package:recepie_app/spring.dart';
import 'package:recepie_app/sweet.dart';
import 'package:recepie_app/tarts.dart';
import 'package:recepie_app/wontonsoup.dart';

class chinaprocess extends StatefulWidget {
  const chinaprocess({super.key});

  @override
  State<chinaprocess> createState() => _chinaprocessState();
}

class _chinaprocessState extends State<chinaprocess> {
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
          'Processed Food',
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
                  'Food To Avoid',
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.025),

            // Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RedBeanBun()),
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
                            'assets16/images16/106.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Red Bean Buns',
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
                          MaterialPageRoute(builder: (context) => RamenInfo()),
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
                            'assets4/img4/bowl.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Ramen',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: textFontSize,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.025),

            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SpringRolls()),
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
                            'assets16/images16/110.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Spring Rolls',
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
                          MaterialPageRoute(builder: (context) => PackagedHotPot()),
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
                            'assets16/images16/202.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Packaged Hot Pot',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: textFontSize,
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
