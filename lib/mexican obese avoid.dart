import 'package:flutter/material.dart';

import 'package:recepie_app/fridaymexicanobese.dart';
import 'package:recepie_app/fridaymexico.dart';

import 'package:recepie_app/glutenchina.dart';
import 'package:recepie_app/mexican%20alcohol.dart';
import 'package:recepie_app/mexicancarbs.dart';
import 'package:recepie_app/mexicanfry.dart';
import 'package:recepie_app/mexicanprocess.dart';
import 'package:recepie_app/mexicansugar.dart';
import 'package:recepie_app/mexicansugarobese.dart';
import 'package:recepie_app/mexicanwednesdayobese.dart';

import 'package:recepie_app/mondaychinagut.dart';
import 'package:recepie_app/mondaymexicanobese.dart';

import 'package:recepie_app/saturdaymexicanobese.dart';
import 'package:recepie_app/saturdaymexico.dart';
import 'package:recepie_app/thursdaymexicanobese.dart';

import 'package:recepie_app/tuesdaymexicanobesity.dart';
import 'package:recepie_app/wednesdaymexicanpcos.dart';

class mexicanobese extends StatefulWidget {
  const mexicanobese({super.key});

  @override
  State<mexicanobese> createState() => _mexicanobeseState();
}

class _mexicanobeseState extends State<mexicanobese> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive values
    final horizontalPadding = screenWidth * 0.05;
    final verticalPadding = screenHeight * 0.015;
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.35;
    final cardRadius = screenWidth * 0.025;
    final titleFontSize = screenWidth * 0.07;
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
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: horizontalPadding, top: verticalPadding),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Food categories To Avoid',
                style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
              ),
            ),
          ),
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
                            MaterialPageRoute(builder: (context) => SugaryBeverages()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/lodi.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Sugary Beverages',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MexicanFriedFoods()));
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
                    Text('Fried Foods',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                  ],
                ),
              ],
            ),
          ),
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
                            'assets7/images7/meat.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Processed Meats',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MexicanAlcoholsToAvoid()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets7/images7/alcohol.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Alcoholic Beverages',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: verticalPadding),
          Text('DIET PLAN',
              style: TextStyle(
                  fontSize: titleFontSize,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold)),
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
                            MaterialPageRoute(builder: (context) => MondayMexicanObesity()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/wrinkle.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Monday',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TuesdayMexicanObesity()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/poda.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Tuesday',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
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
                            'assets15/images15/olaf.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Wednesday',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ThursdayMexicanObesity()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/create.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Thursday',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
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
                            MaterialPageRoute(builder: (context) => FridayMexicanObesity()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/copy.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Friday',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SaturdayMexicanObesity()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/600.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Saturday',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: verticalPadding),
        ]),
      ),
    );
  }
}
