import 'package:flutter/material.dart';
import 'package:recepie_app/barbie.dart';
import 'package:recepie_app/dairythai.dart';
import 'package:recepie_app/deepfriedthai.dart';
import 'package:recepie_app/fridayddl.dart';
import 'package:recepie_app/fridaypcosthai.dart';
import 'package:recepie_app/fridaythai.dart';
import 'package:recepie_app/fridaythaigut2.dart';
import 'package:recepie_app/gluten%20thai.dart';
import 'package:recepie_app/highgiobese.dart';
import 'package:recepie_app/highgithai.dart';
import 'package:recepie_app/mondaygutthai.dart';
import 'package:recepie_app/mondayobesethai.dart';
import 'package:recepie_app/mondaythai.dart';
import 'package:recepie_app/mondaythaidiabetes.dart';
import 'package:recepie_app/saturdayddl.dart';
import 'package:recepie_app/saturdaypcosthai.dart';
import 'package:recepie_app/saturdaythai.dart';
import 'package:recepie_app/saturdaythaigut3.dart';
import 'package:recepie_app/sodiumthai.dart';
import 'package:recepie_app/sugardiabetesthai.dart';
import 'package:recepie_app/sugarythai.dart';
import 'package:recepie_app/thaialcohol.dart';
import 'package:recepie_app/thaidairy.dart';
import 'package:recepie_app/thaidiabetes.dart';
import 'package:recepie_app/thaifat2.dart';
import 'package:recepie_app/thaifry.dart';
import 'package:recepie_app/thaisodium.dart';
import 'package:recepie_app/thursdayobesethai.dart';
import 'package:recepie_app/thursdaypcosthai.dart';
import 'package:recepie_app/thursdayq.dart';
import 'package:recepie_app/thursdaytrhaigut.dart';
import 'package:recepie_app/tuesdayobesethao.dart';
import 'package:recepie_app/tuesdaythai.dart';
import 'package:recepie_app/tuesdaythaigut2.dart';
import 'package:recepie_app/tyesdaythaidiabetes.dart';
import 'package:recepie_app/wednesdauobesethai.dart';
import 'package:recepie_app/wednesdaydi.dart';
import 'package:recepie_app/wednesdaypcosthai.dart';
import 'package:recepie_app/wednesdaythaigut.dart';

class Thai2 extends StatefulWidget {
  const Thai2({super.key});

  @override
  State<Thai2> createState() => _Thai2State();
}

class _Thai2State extends State<Thai2> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive values
    final cardHeight = screenHeight * 0.25;
    final cardWidth = screenWidth * 0.35;
    final cardRadius = screenWidth * 0.025;

    final horizontalPadding = screenWidth * 0.06;
    final verticalPadding = screenHeight * 0.015;

    final titleFontSize = screenWidth * 0.07;
    final subtitleFontSize = screenWidth * 0.05;
    final textFontSize = screenWidth * 0.045;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gut',
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food categories To Avoid',
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: verticalPadding),
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
                              MaterialPageRoute(builder: (context) => glutenthai()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/gluten.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Gluten',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => dairythai()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/gluten1.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Dairy',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                      ),
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
                              MaterialPageRoute(builder: (context) => dairythai11()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/gluten2.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Fried Food',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => thaialcohol()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/gluten3.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Alcohol & carbonate drink',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: verticalPadding),
            Text(
              'DIET PLAN',
              style: TextStyle(
                fontSize: titleFontSize,
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold,
              ),
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
                              MaterialPageRoute(builder: (context) => MondayDThaiDD()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/g.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Monday',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TuesdayDThaiDDD()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/a.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Tuesday',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WednesdayPCOSThaieee()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/b.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Wednesday',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FridayPCOSThaixxx()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/c.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Thursday',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FridayPCOSThaiaaa()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/d.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Friday',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SaturdayGutThai3()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/e.jpeg',
                              height: cardHeight,
                              width: cardWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Saturday',
                        style: TextStyle(
                            fontSize: textFontSize, color: Colors.green.shade800),
                      ),
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
