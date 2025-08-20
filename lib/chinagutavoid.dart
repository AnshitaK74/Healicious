import 'package:flutter/material.dart';
import 'package:recepie_app/chinaalcohol.dart';
import 'package:recepie_app/chinafatty2.dart';
import 'package:recepie_app/chinajunk.dart';
import 'package:recepie_app/chinaprocess2.dart';
import 'package:recepie_app/croc.dart';
import 'package:recepie_app/fridaychinagut.dart';
import 'package:recepie_app/glutenchina.dart';
import 'package:recepie_app/mondaychinagut.dart';
import 'package:recepie_app/saturdaychinagut.dart';
import 'package:recepie_app/tuesdaygutchina.dart';
import 'package:recepie_app/thursdaychinagut.dart';
import 'package:recepie_app/wednesdaychinagut.dart';

class chinagutavaoidd extends StatefulWidget {
  const chinagutavaoidd({super.key});

  @override
  State<chinagutavaoidd> createState() => _chinagutavoiddState();
}

class _chinagutavoiddState extends State<chinagutavaoidd> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive values (same style as ChinaDiabetes)
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
          'Gut Problem',
          style: TextStyle(
              fontSize: titleFontSize,
              color: Colors.green.shade800,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: verticalPadding),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: horizontalPadding),
                  child: Text('Food categories To Avoid',
                      style: TextStyle(
                          fontSize: subtitleFontSize,
                          color: Colors.green.shade800)),
                )),

            // Row 1
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => chinalcohol2()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets7/images7/alcohol.jpg',
                                height: imageHeight,
                                width: imageWidth,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text('Alcohol',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => chinafatty2()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets7/images7/chips.jpeg',
                                height: imageHeight,
                                width: imageWidth,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text('Fried and fatty food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800))
                    ],
                  ),
                ],
              ),
            ),

            // Row 2
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(horizontalPadding),
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
                                  builder: (context) => ChinaProcessedFood()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets7/images7/4.jpg',
                                height: imageHeight,
                                width: imageWidth,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text('Processed Food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Chinadairy()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets7/images7/yoga.jpeg',
                                height: imageHeight,
                                width: imageWidth,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text('Gluten or Dairy',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                ],
              ),
            ),

            // Diet Plan Title
            Text('DIET PLAN',
                style: TextStyle(
                    fontSize: titleFontSize,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold)),

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
                                    builder: (context) => MondayChineseGutDiet()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(cardRadius),
                              child: Image.asset('assets6/images6/thai.jpg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text('Monday',
                            style: TextStyle(
                                fontSize: textFontSize, color: Colors.green.shade800)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => TuesdayChinaGut()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(cardRadius),
                              child: Image.asset('assets16/images16/41.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text('Tuesday',
                            style: TextStyle(
                                fontSize: textFontSize, color: Colors.green.shade800)),
                      ],
                    ),
                  ],
                )),

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
                                MaterialPageRoute(builder: (context) =>WednesdayChinaGut()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(cardRadius),
                              child: Image.asset('assets6/images6/hot.jpg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text('Wednesday',
                            style: TextStyle(
                                fontSize: textFontSize, color: Colors.green.shade800)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ThursdayChinaGut()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(cardRadius),
                              child: Image.asset('assets7/images7/b.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text('Thursday',
                            style: TextStyle(
                                fontSize: textFontSize, color: Colors.green.shade800)),
                      ],
                    ),
                  ],
                )),

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
                                    builder: (context) => FridayGutChineseDishes()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(cardRadius),
                              child: Image.asset('assets7/images7/4.jpg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text('Friday',
                            style: TextStyle(
                                fontSize: textFontSize, color: Colors.green.shade800)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => saturdaychinagut()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(cardRadius),
                              child: Image.asset('assets15/images15/2.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text('Saturday',
                            style: TextStyle(
                                fontSize: textFontSize, color: Colors.green.shade800)),
                      ],
                    ),
                  ],
                )),
          ])),
    );
  }
}
