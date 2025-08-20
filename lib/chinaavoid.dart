import 'package:flutter/material.dart';
import 'package:recepie_app/carbs.dart';
import 'package:recepie_app/carbschina.dart';
import 'package:recepie_app/chinajunk.dart';
import 'package:recepie_app/dairychinapcos.dart';
import 'package:recepie_app/dairypcos.dart';
import 'package:recepie_app/fridaychina.dart';
import 'package:recepie_app/fridaypcos.dart';
import 'package:recepie_app/highgi.dart';
import 'package:recepie_app/highgichina.dart';
import 'package:recepie_app/junkfoodpcos.dart';
import 'package:recepie_app/monday%20pcos.dart';
import 'package:recepie_app/mondaychina.dart';
import 'package:recepie_app/saturdaychina.dart';
import 'package:recepie_app/saturdaypcos.dart';
import 'package:recepie_app/thursdaychina.dart';
import 'package:recepie_app/thursdaypcos.dart';
import 'package:recepie_app/tuesday.pcos.dart';
import 'package:recepie_app/tuesdaychina.dart';
import 'package:recepie_app/wednesday.pcos.dart';
import 'package:recepie_app/wednesdaychina.dart';

class chinavaoid extends StatefulWidget {
  const chinavaoid({super.key});

  @override
  State<chinavaoid> createState() => _chinavaoidState();
}

class _chinavaoidState extends State<chinavaoid> {
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
                              MaterialPageRoute(builder: (context) => highgichina()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dairychinapcos()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets2/images2/cheese.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Dairy',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => chinajunk()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets2/images2/pizza.jpg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Junk Food',
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
                              MaterialPageRoute(builder: (context) => chinacarbs()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets2/images2/images-12.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Carbs',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.green.shade800)),
                    ],
                  ),
                ],
              ),
            ),

            // Diet Plan Title
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
                                  builder: (context) => MondayChineseDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/mon.jpeg',
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
                                  builder: (context) => TuesdayChineseDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/tue.jpeg',
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
                                  builder: (context) => WednesdayChineseDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/wed.jpeg',
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
                                  builder: (context) => ThursdayChineseDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/thurs.jpeg',
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
                                  builder: (context) => FridayChineseDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/fri.jpeg',
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
                                  builder: (context) => SaturdayChineseDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/img_3.png',
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
