import 'package:flutter/material.dart';
import 'package:recepie_app/chinafast.dart';
import 'package:recepie_app/chinafried.dart';
import 'package:recepie_app/chinasodium.dart';
import 'package:recepie_app/fridaychin.dart';
import 'package:recepie_app/monday%20china%20obese.dart';
import 'package:recepie_app/saturadaychin.dart';
import 'package:recepie_app/sugarchina.dart';
import 'package:recepie_app/sugarychina.dart';
import 'package:recepie_app/thursdaychin.dart';
import 'package:recepie_app/tuesdaychindiet.dart';
import 'package:recepie_app/wednesdaychin.dart';

class chinaobeseavoidd extends StatefulWidget {
  const chinaobeseavoidd({super.key});

  @override
  State<chinaobeseavoidd> createState() => _chinaobeseavoiddState();
}

class _chinaobeseavoiddState extends State<chinaobeseavoidd> {
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
            SizedBox(height: verticalPadding),
            Padding(
              padding: EdgeInsets.only(left: horizontalPadding),
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
              padding: EdgeInsets.all(horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>sugarychina()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/21.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Sugary Beverages',
                          style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>chinafried()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/22.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Fried Foods',
                          style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>chinafast()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/23.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Fast Food',
                          style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>chinasodium()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/24.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('High Sodium',
                          style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mondayChinDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/25.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Monday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tuesdayChinDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/26.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Tuesday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>wednesdayChinDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/27.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Wednesday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thursdayChinDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/28.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Thursday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>fridayChinDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/29.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Friday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>saturdayChinDiet()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset(
                              'assets16/images16/30.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Saturday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
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
