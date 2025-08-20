import 'package:flutter/material.dart';
import 'package:recepie_app/carbs.dart';
import 'package:recepie_app/dairypcos.dart';
import 'package:recepie_app/fridaypcos.dart';
import 'package:recepie_app/highgi.dart';
import 'package:recepie_app/junkfoodpcos.dart';
import 'package:recepie_app/junkfoodpcos3.dart';
import 'package:recepie_app/monday%20pcos.dart';
import 'package:recepie_app/mondaypcosindia.dart';
import 'package:recepie_app/saturdaypcos.dart';
import 'package:recepie_app/thursdaypcos.dart';
import 'package:recepie_app/tuesday.pcos.dart';
import 'package:recepie_app/wednesday.pcos.dart';

class pcosavoid extends StatefulWidget {
  const pcosavoid({super.key});

  @override
  State<pcosavoid> createState() => _pcosavoidState();
}

class _pcosavoidState extends State<pcosavoid> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive image size
    final imageHeight = screenHeight * 0.25; // ~25% screen height
    final imageWidth = screenWidth * 0.35;   // ~35% screen width

    // Responsive padding
    final horizontalPadding = screenWidth * 0.06; // ~6%
    final verticalPadding = screenHeight * 0.015; // ~1.5%

    // Responsive font sizes
    final titleFontSize = screenWidth * 0.07; // ~7% of width
    final subtitleFontSize = screenWidth * 0.05; // ~5% of width
    final textFontSize = screenWidth * 0.045; // ~4.5% of width

    // Responsive spacing helper
    final smallSpacing = verticalPadding / 2;
    final mediumSpacing = verticalPadding;
    final largeSpacing = verticalPadding * 2;

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
                padding: EdgeInsets.only(left: horizontalPadding, top: verticalPadding),
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
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => highgi()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets2/images2/img_17.png',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: smallSpacing),
                      Text(
                        'High Gi',
                        style: TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => dairypcos()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets2/images2/cheese.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: smallSpacing),
                      Text(
                        'Dairy',
                        style: TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                      )
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
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => junkfoodpcos1()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets2/images2/pizza.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: smallSpacing),
                      Text(
                        'Junk Food',
                        style: TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Carbs()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets2/images2/images-12.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: smallSpacing),
                      Text(
                        'Carbs',
                        style: TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: largeSpacing),
                Text(
                  'DIET PLAN',
                  style: TextStyle(
                    fontSize: titleFontSize,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: mediumSpacing),
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
                                      builder: (context) => MexicaPCOSDiet()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                                child: Image.asset(
                                  'assets2/images2/img_16.jpg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: smallSpacing),
                          Text(
                            'Monday',
                            style:
                            TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => tuesdaypcos()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                                child: Image.asset(
                                  'assets2/images2/images-17.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: smallSpacing),
                          Text(
                            'Tuesday',
                            style:
                            TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediumSpacing),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => wednesdaypcos()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                                child: Image.asset(
                                  'assets2/images2/daliya.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: smallSpacing),
                          Text(
                            'wednesday',
                            style:
                            TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => thursdaypcos()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                                child: Image.asset(
                                  'assets2/images2/img-19.png',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: smallSpacing),
                          Text(
                            'Thursday',
                            style:
                            TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediumSpacing),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => fridaypcos()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                                child: Image.asset(
                                  'assets2/images2/acb.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: smallSpacing),
                          Text(
                            'Friday',
                            style:
                            TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => saturdaypcos()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                                child: Image.asset(
                                  'assets2/images2/images-18.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: smallSpacing),
                          Text(
                            'Saturday',
                            style:
                            TextStyle(color: Colors.green.shade800, fontSize: textFontSize),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: largeSpacing),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
