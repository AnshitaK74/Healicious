import 'package:flutter/material.dart';

import 'package:recepie_app/fridayitalyobese.dart';
import 'package:recepie_app/italianfast.dart';
import 'package:recepie_app/italiansugar.dart';
import 'package:recepie_app/italycarbs.dart';
import 'package:recepie_app/italyobesecarbs.dart';
import 'package:recepie_app/italyoilavoid.dart';
import 'package:recepie_app/italysugar.dart';
import 'package:recepie_app/mondayobeseitaly.dart';
import 'package:recepie_app/mondayobesethai.dart';
import 'package:recepie_app/processitaly.dart';
import 'package:recepie_app/saturdayitalianobese.dart';
import 'package:recepie_app/thursdayitalianobese.dart';
import 'package:recepie_app/tuesdayitalyobsity.dart';
import 'package:recepie_app/wednesdayitalyobese.dart';

class ObesityDietAvoidi extends StatefulWidget {
  const ObesityDietAvoidi({super.key});

  @override
  State<ObesityDietAvoidi> createState() => _ObesityDietAvoidiState();
}

class _ObesityDietAvoidiState extends State<ObesityDietAvoidi> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive values
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.35;
    final cardRadius = screenWidth * 0.025;

    final horizontalPadding = screenWidth * 0.06;
    final verticalPadding = screenHeight * 0.02;

    final titleFontSize = screenWidth * 0.07;
    final subtitleFontSize = screenWidth * 0.05;
    final textFontSize = screenWidth * 0.045;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Obesity',
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: horizontalPadding),
                child: Text(
                  'Food Categories to Avoid',
                  style: TextStyle(
                      fontSize: subtitleFontSize,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: verticalPadding),

            // Row 1
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
                                  builder: (context) => HighCarbItaly()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets15/images15/rice.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Refined Carbohydrates',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => oilavoid()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets11/images11/p.webp',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Oily Food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: verticalPadding),

            // Row 2
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
                                  builder: (context) => ItalianSugarFoods()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets15/images15/ice.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Sugary Beverages and Food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => processitaly()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets10/images10/o.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Processed and Fast Food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: verticalPadding),

            // Diet Plan Title
            Text(
              'DIET PLAN',
              style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mondaydthaid()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets15/images15/old.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Monday',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => tuessdayItalianObesityy()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets10/images10/s.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Tuesday',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      WednesdayItalianObesityy()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets11/images11/a.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Wednesday',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ThursdayItalianObesityy1()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets15/images15/jennie.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Thursday',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FridayItalianObesityy()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets10/images10/w.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Friday',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SaturdayItalianObesity1()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets11/images11/a.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: verticalPadding / 2),
                      Text('Saturday',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
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
