import 'package:flutter/material.dart';
import 'package:recepie_app/Carnitas.dart';
import 'package:recepie_app/Chimichangas.dart';
import 'package:recepie_app/Packaged%20Taco%20Shells.dart';
import 'package:recepie_app/beans.dart';
import 'package:recepie_app/beefburitomexico.dart';
import 'package:recepie_app/burito.dart';
import 'package:recepie_app/can.dart';
import 'package:recepie_app/cannedmeatmexico.dart';
import 'package:recepie_app/cannedsoup20.dart';
import 'package:recepie_app/carnitasmexico.dart';
import 'package:recepie_app/chorizo.dart';
import 'package:recepie_app/chorizomexico.dart';
import 'package:recepie_app/churros.dart';
import 'package:recepie_app/mexicancan.dart';

class mexicanprocess extends StatefulWidget {
  const mexicanprocess({super.key});

  @override
  State<mexicanprocess> createState() => _mexicanprocessState();
}

class _mexicanprocessState extends State<mexicanprocess> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.35;
    final cardRadius = screenWidth * 0.025;
    final paddingAll = screenWidth * 0.05;

    final titleFontSize = screenWidth * 0.07;
    final textFontSize = screenWidth * 0.045;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Processed Food',
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(paddingAll),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Meats To Avoid',
                  style: TextStyle(
                    fontSize: textFontSize,
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
                            MaterialPageRoute(builder: (context) => Carnitas111()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets2/images2/img_27.png',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: imageWidth,
                      child: Text(
                        'Carnitas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Chorizo11()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets2/images2/bon.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: imageWidth,
                      child: Text(
                        'Chorizo',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BeefBurrito()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets20/images20/beef.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: imageWidth,
                      child: Text(
                        'Beef Burrito',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CannedMeat()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets2/images2/canned.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: imageWidth,
                      child: Text(
                        'Canned Meat',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
          ],
        ),
      ),
    );
  }
}
