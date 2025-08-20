import 'package:flutter/material.dart';
import 'package:recepie_app/fridaymexicandiabetes.dart';
import 'package:recepie_app/mexican%20alcohol.dart';
import 'package:recepie_app/mexicancarbs.dart';
import 'package:recepie_app/mexicanfruits.dart';
import 'package:recepie_app/mexicanprocess3.dart';
import 'package:recepie_app/mexicansugar2.dart';
import 'package:recepie_app/mondaymexicodiabetes.dart';
import 'package:recepie_app/saturdaymexican.dart';
import 'package:recepie_app/thursdaymexicandiabetes.dart';
import 'package:recepie_app/tuesdaymexicandiabtes.dart';
import 'package:recepie_app/wednesday3.dart';

class mexicandiabetes extends StatefulWidget {
  const mexicandiabetes({super.key});

  @override
  State<mexicandiabetes> createState() => _mexicandiabetesState();
}

class _mexicandiabetesState extends State<mexicandiabetes> {
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
          'Diabetes',
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
          // Row 1
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(horizontalPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Sugary Beverages/Foods
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => mexicansugar2()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets16/images16/b.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Sugary Foods',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                  ],
                ),
                // Processed Snacks
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => mexicansnacks2()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets16/images16/c.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Processed Snacks',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
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
                // High-Sugar Fruits
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => mexicanfruits()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/l.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('High-Sugar Fruits',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800))
                  ],
                ),
                // Refined Carbohydrates
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => mexicancarbs()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets16/images16/d.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: verticalPadding / 2),
                    Text('Refined Carbs',
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800)),
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
                // Monday
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => mondaymexicandiabetes()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets16/images16/e.jpeg',
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
                // Tuesday
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tuesdaymexicandiabetes()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets6/images6/old.jpeg',
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
                // Wednesday
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => wednesdaymexicandiabetes1()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets16/images16/f.jpeg',
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
                // Thursday
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => thursdaymexicandiabetes()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets16/images16/c.jpeg',
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
                // Friday
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => fridaymexicandiabetes()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/z.jpeg',
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
                // Saturday
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => saturdaymexicandiabetes()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets15/images15/w.jpeg',
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
