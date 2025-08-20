import 'package:flutter/material.dart';
import 'package:recepie_app/indainchaat.dart';
import 'package:recepie_app/indianpakoda.dart';
import 'package:recepie_app/indiansamosa.dart';
import 'package:recepie_app/samosa.dart';
import 'package:recepie_app/friednoodles.dart';

class junkfoodpcos1 extends StatefulWidget {
  const junkfoodpcos1({super.key});

  @override
  State<junkfoodpcos1> createState() => _junkfoodpcos1State();
}

class _junkfoodpcos1State extends State<junkfoodpcos1> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final horizontalPadding = screenWidth * 0.05; // 5% padding
    final imageHeight = screenHeight * 0.25;       // 25% height for images
    final imageWidth = screenWidth * 0.4;          // 40% width for images
    final borderRadius = screenWidth * 0.025;      // 2.5% radius
    final fontSizeTitle = screenWidth * 0.08;      // 8% width
    final fontSizeSubtitle = screenWidth * 0.05;   // 5% width
    final fontSizeText = screenWidth * 0.035;      // 3.5% width
    final spacingSmall = screenHeight * 0.01;      // small vertical spacing
    final spacingMedium = screenHeight * 0.02;     // medium vertical spacing

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Junk Foods',
          style: TextStyle(
              fontSize: fontSizeTitle,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(horizontalPadding),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Foods To Avoid',
                  style: TextStyle(
                      fontSize: fontSizeSubtitle,
                      color: Colors.green.shade800),
                ),
              ),
              SizedBox(height: spacingMedium),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SamosaPCOS1()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets16/images16/samosa.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text('Samosa',
                          style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: fontSizeText)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PakodaPCOS1()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets16/images16/pakoda.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text('Pakoda',
                          style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: fontSizeText)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: spacingMedium),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ChaatPCOS1()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets16/images16/chaat.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text('Chaat',
                          style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: fontSizeText)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FriedNoodlesPCOS1()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              'assets16/images16/fried.jpeg',
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacingSmall),
                      Text('Fried Noodles',
                          style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: fontSizeText)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
