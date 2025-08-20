import 'package:flutter/material.dart';
import 'package:recepie_app/barbie.dart';
import 'package:recepie_app/deepfriedthai.dart';
import 'package:recepie_app/fridayddl.dart';
import 'package:recepie_app/fridaypcosthai.dart';
import 'package:recepie_app/fridaythai.dart';
import 'package:recepie_app/highgithai.dart';
import 'package:recepie_app/mondaythai.dart';
import 'package:recepie_app/mondaythaidiabetes.dart';
import 'package:recepie_app/saturdaypcosthai.dart';
import 'package:recepie_app/saturdaythai.dart';
import 'package:recepie_app/sodiumthai.dart';
import 'package:recepie_app/sugardiabetesthai.dart';
import 'package:recepie_app/sugarythai.dart';
import 'package:recepie_app/thaidairy.dart';
import 'package:recepie_app/thaidiabetes.dart';
import 'package:recepie_app/thursdaypcosthai.dart';
import 'package:recepie_app/thursdayq.dart';
import 'package:recepie_app/tuesdaythai.dart';
import 'package:recepie_app/tyesdaythaidiabetes.dart';
import 'package:recepie_app/wednesdaydi.dart';
import 'package:recepie_app/wednesdaypcosthai.dart';

class thaidavoid extends StatefulWidget {
  const thaidavoid({super.key});

  @override
  State<thaidavoid> createState() => _thaidavoidState();
}

class _thaidavoidState extends State<thaidavoid> {
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
          'Diabetes',
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
              padding: EdgeInsets.all(horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thaidiabetes()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets2/images2/img_17.png',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('High Gi',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thaidiabetes33()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/13.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Carbs',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800))
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thaidiabetes1111()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/12.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Sugary Food',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>thaidairy()));
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/11.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Full Fat Dairy',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
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

            // Row Monday & Tuesday
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaydthai()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/g.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TuesdayDThai()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/a.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Tuesday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
                    ],
                  ),
                ],
              ),
            ),

            // Row Wednesday & Thursday
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>WednesdayPCOSThaji()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/b.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>fridayddl()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/c.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Thursday',style: TextStyle(fontSize: textFontSize,color: Colors.green.shade800)),
                    ],
                  ),
                ],
              ),
            ),

            // Row Friday & Saturday
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
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/d.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>saturdaypcosjapan()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(cardRadius),
                            child: Image.asset('assets20/images20/e.jpeg',
                              height: imageHeight, width: imageWidth, fit: BoxFit.cover,),
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
