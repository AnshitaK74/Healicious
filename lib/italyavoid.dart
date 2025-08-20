import 'package:flutter/material.dart';
import 'package:recepie_app/Inflammatory%20Oils.dart';
import 'package:recepie_app/fridayitalianpcos.dart';
import 'package:recepie_app/italianfast.dart';
import 'package:recepie_app/italiansugar.dart';
import 'package:recepie_app/italycarbs.dart';
import 'package:recepie_app/mondayitalypcos.dart';
import 'package:recepie_app/saturdayitalianpcos.dart';
import 'package:recepie_app/thursdayitalianpcos.dart';
import 'package:recepie_app/tuesdayitalianpcos.dart';
import 'package:recepie_app/wednesdayitalianpcos.dart';

class italyavoid extends StatefulWidget {
  const italyavoid({super.key});

  @override
  State<italyavoid> createState() => _italyavoidState();
}

class _italyavoidState extends State<italyavoid> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // EXACT values from chinavaoid
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
            fontWeight: FontWeight.bold,
          ),
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
                  'Food categories To Avoid',
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),

            // Row 1: Refined Carbs & Inflammatory Oils
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
                                  builder: (context) => highcarbitalian()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets3/imgaes4/cheese.webp',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Refined Carbohydrates',
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
                              MaterialPageRoute(builder: (context) => oils()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets10/images10/e.webp',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Inflammatory Oils',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800))
                    ],
                  ),
                ],
              ),
            ),

            // Row 2: Sugary & Processed Foods
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
                              MaterialPageRoute(builder: (context) => italiansugar()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets10/images10/l.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Sugary Food',
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
                              MaterialPageRoute(builder: (context) => italianfast()));
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
                      Text('Processed Food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800))
                    ],
                  ),
                ],
              ),
            ),

            // Diet Plan Title
            SizedBox(height: verticalPadding),
            Text(
              'DIET PLAN',
              style: TextStyle(
                fontSize: titleFontSize,
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Monday & Tuesday
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
                                  builder: (context) =>
                                  const MondayPCOSItalianDishes()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets10/images10/n.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
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
                                  builder: (context) =>
                                  const TuesdayPCOSItalianDishes()));
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
                                  builder: (context) =>
                                  const WednesdayPCOSItalianDishes()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets13/images13/n.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
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
                                  const ThursdayPCOSItalianDishes()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets13/images13/ll.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
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
                                  builder: (context) =>
                                  const FridayPCOSItalianDishes()));
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
                                  const SaturdayPCOSItalianDishes()));
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
