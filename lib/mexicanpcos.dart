import 'package:flutter/material.dart';
import 'package:recepie_app/MEXICANFAT.dart';
import 'package:recepie_app/mexicancarbs.dart';
import 'package:recepie_app/mexicanprocess.dart';
import 'package:recepie_app/mexicansugar.dart';
import 'package:recepie_app/mondaymexicopcos.dart';
import 'package:recepie_app/tuesdaymexicanpcos.dart';
import 'package:recepie_app/wednesdaymexicanpcos.dart';
import 'package:recepie_app/thursdaymexico.dart';
import 'package:recepie_app/fridaymexico.dart';
import 'package:recepie_app/saturdaymexico.dart';

class mexicanpcos extends StatefulWidget {
  const mexicanpcos({super.key});

  @override
  State<mexicanpcos> createState() => _mexicanpcosState();
}

class _mexicanpcosState extends State<mexicanpcos> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive values
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.35;
    final cardRadius = screenWidth * 0.025;
    final horizontalPadding = screenWidth * 0.06;
    final verticalPadding = screenHeight * 0.015;
    final titleFontSize = screenWidth * 0.07;
    final subtitleFontSize = screenWidth * 0.05;
    final textFontSize = screenWidth * 0.045;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PCOS',
          style: TextStyle(
              fontSize: titleFontSize,
              color: Colors.green.shade800,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: verticalPadding),
            Padding(
              padding: EdgeInsets.only(left: horizontalPadding, top: verticalPadding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food categories To Avoid',
                  style: TextStyle(
                      fontSize: subtitleFontSize,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            // Row 1
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => mexicancarbs()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets15/images15/maida.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      SizedBox(
                        width: imageWidth,
                        child: Text(
                          'Refined Carbohydrates',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => mexicanfat()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets7/images7/chips.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      SizedBox(
                        width: imageWidth,
                        child: Text(
                          'Trans & Saturated Fats',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800),
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
              padding: EdgeInsets.all(horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => mexicanprocess()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets7/images7/4.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      SizedBox(
                        width: imageWidth,
                        child: Text(
                          'Processed Food',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => mexicansugar()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets7/images7/yoga.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      SizedBox(
                        width: imageWidth,
                        child: Text(
                          'Sugary Foods & Beverages',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: verticalPadding * 2),
            // Diet Plan Title
            Text(
              'DIET PLAN',
              style: TextStyle(
                  fontSize: titleFontSize,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: verticalPadding),
            // Monday & Tuesday
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MexicanPCOSDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets6/images6/thai.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text(
                        'Monday',
                        style: TextStyle(
                            fontSize: textFontSize,
                            color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TuesdayMexicanPCOSDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets6/images6/old.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text(
                        'Tuesday',
                        style: TextStyle(
                            fontSize: textFontSize,
                            color: Colors.green.shade800),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Wednesday & Thursday
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => WednesdayMexicanPCOSDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets6/images6/hot.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text(
                        'Wednesday',
                        style: TextStyle(
                            fontSize: textFontSize,
                            color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ThursdayMexicanPCOSDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets15/images15/www.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text(
                        'Thursday',
                        style: TextStyle(
                            fontSize: textFontSize,
                            color: Colors.green.shade800),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Friday & Saturday
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FridayMexicanPCOSDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets7/images7/4.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text(
                        'Friday',
                        style: TextStyle(
                            fontSize: textFontSize,
                            color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SaturdayMexicanPCOSDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets15/images15/aq.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text(
                        'Saturday',
                        style: TextStyle(
                            fontSize: textFontSize,
                            color: Colors.green.shade800),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: verticalPadding),
          ],
        ),
      ),
    );
  }
}
