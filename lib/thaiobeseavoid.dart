import 'package:flutter/material.dart';
import 'package:recepie_app/barbie.dart';
import 'package:recepie_app/deepfriedthai.dart';
import 'package:recepie_app/fridayddl.dart';
import 'package:recepie_app/fridaypcosthai.dart';
import 'package:recepie_app/fridaythai.dart';
import 'package:recepie_app/highgiobese.dart';
import 'package:recepie_app/highgithai.dart';
import 'package:recepie_app/mondayobesethai.dart';
import 'package:recepie_app/mondaythai.dart';
import 'package:recepie_app/mondaythaidiabetes.dart';
import 'package:recepie_app/saturdayddl.dart';
import 'package:recepie_app/saturdaypcosthai.dart';
import 'package:recepie_app/saturdaythai.dart';
import 'package:recepie_app/sodiumthai.dart';
import 'package:recepie_app/sugardiabetesthai.dart';
import 'package:recepie_app/sugarythai.dart';
import 'package:recepie_app/thaialcohol.dart';
import 'package:recepie_app/thaidairy.dart';
import 'package:recepie_app/thaidiabetes.dart';
import 'package:recepie_app/thaifat2.dart';
import 'package:recepie_app/thaisodium.dart';
import 'package:recepie_app/thursdayobesethai.dart';
import 'package:recepie_app/thursdaypcosthai.dart';
import 'package:recepie_app/thursdayq.dart';
import 'package:recepie_app/tuesdayobesethao.dart';
import 'package:recepie_app/tuesdaythai.dart';
import 'package:recepie_app/tyesdaythaidiabetes.dart';
import 'package:recepie_app/wednesdauobesethai.dart';
import 'package:recepie_app/wednesdaydi.dart';
import 'package:recepie_app/wednesdaypcosthai.dart';

class thai extends StatefulWidget {
  const thai({super.key});

  @override
  State<thai> createState() => _thaiState();
}

class _thaiState extends State<thai> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery values
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsive values
    final imageHeight = screenHeight * 0.25; // ~200
    final imageWidth = screenWidth * 0.35;  // ~150
    final cardRadius = screenWidth * 0.025; // ~10
    final horizontalPadding = screenWidth * 0.05; // ~20
    final verticalPadding = screenHeight * 0.015; // ~10
    final titleFontSize = screenWidth * 0.08; // ~32
    final subtitleFontSize = screenWidth * 0.05; // ~20
    final textFontSize = screenWidth * 0.045; // ~16

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Obesity',
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
            Padding(
              padding: EdgeInsets.all(horizontalPadding),
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>highgithai1()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
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
                      Text('High Gi', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>highgithai22222()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/img_7.png',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Trans Fat', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thaisodium()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/namprik.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Excess Sodium', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thaialcohol()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets20/images20/alcohol.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Alcohol', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                    ],
                  ),
                ],
              ),
            ),

            // Diet Plan Title
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

                // Monday & Tuesday
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaydthaid()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(cardRadius),
                                child: Image.asset(
                                  'assets20/images20/g.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Monday', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>tuesdaydthaid()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(cardRadius),
                                child: Image.asset(
                                  'assets20/images20/a.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Tuesday', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
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
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>wednesdayddl()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(cardRadius),
                                child: Image.asset(
                                  'assets20/images20/b.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Wednesday', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>thursdayddl()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(cardRadius),
                                child: Image.asset(
                                  'assets20/images20/c.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Thursday', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
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
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>fridayddl()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(cardRadius),
                                child: Image.asset(
                                  'assets20/images20/d.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Friday', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>saturdayddl()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(cardRadius),
                                child: Image.asset(
                                  'assets20/images20/e.jpeg',
                                  height: imageHeight,
                                  width: imageWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Saturday', style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
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
