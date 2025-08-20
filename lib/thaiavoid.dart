import 'package:flutter/material.dart';
import 'package:recepie_app/deepfriedthai.dart';
import 'package:recepie_app/fridaythai.dart';
import 'package:recepie_app/highgithai.dart';
import 'package:recepie_app/mondaythai.dart';
import 'package:recepie_app/saturdaypcosthai.dart';
import 'package:recepie_app/sodiumthai.dart';
import 'package:recepie_app/sugarythai.dart';
import 'package:recepie_app/thursdaypcosthai.dart';
import 'package:recepie_app/tuesdaythai.dart';
import 'package:recepie_app/wednesdaypcosthai.dart';

class thaiavoid extends StatefulWidget {
  const thaiavoid({super.key});

  @override
  State<thaiavoid> createState() => _thaiavoidState();
}

class _thaiavoidState extends State<thaiavoid> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive values
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.35;
    final horizontalPadding = screenWidth * 0.06;
    final verticalPadding = screenHeight * 0.015;
    final titleFontSize = screenWidth * 0.07;
    final subtitleFontSize = screenWidth * 0.05;
    final textFontSize = screenWidth * 0.045;
    final borderRadius = screenWidth * 0.025;

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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                EdgeInsets.only(left: horizontalPadding, top: verticalPadding),
                child: Text(
                  'Food categories To Avoid',
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
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
                              MaterialPageRoute(builder: (context) => highgithai()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/img_17.png',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('High Gi',
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
                              MaterialPageRoute(builder: (context) => deepfriedthai()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets5/images5/weed.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Deep Fried Food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800))
                    ],
                  ),
                ],
              ),
            ),
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
                              MaterialPageRoute(builder: (context) => sugarythai()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets5/images5/sweet.jpg',
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
                              MaterialPageRoute(builder: (context) => sodiumthai()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets2/images2/images-12.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('High Sodium  Food',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800))
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'DIET PLAN',
                  style: TextStyle(
                    fontSize: titleFontSize,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => mondaypcosthai()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(borderRadius)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(borderRadius),
                                child: Image.asset(
                                  'assets20/images20/g.jpeg',
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => tuesdaypcosthai()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(borderRadius)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(borderRadius),
                                child: Image.asset(
                                  'assets20/images20/a.jpeg',
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
                                      builder: (context) => WednesdayPCOSThai()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(borderRadius)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(borderRadius),
                                child: Image.asset(
                                  'assets20/images20/b.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('wednesday',
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
                                      builder: (context) => FridayPCOSThai()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(borderRadius)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(borderRadius),
                                child: Image.asset(
                                  'assets20/images20/c.jpeg',
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
                                      builder: (context) => fridaypcosthai()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(borderRadius)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(borderRadius),
                                child: Image.asset(
                                  'assets20/images20/d.jpeg',
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
                                      builder: (context) => SaturdayPCOSThai()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(borderRadius)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(borderRadius),
                                child: Image.asset(
                                  'assets20/images20/e.jpeg',
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
          ],
        ),
      ),
    );
  }
}
