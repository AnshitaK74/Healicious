import 'package:flutter/material.dart';
import 'package:recepie_app/Cha%20Yen.dart';
import 'package:recepie_app/Sai%20Krok%20Isan.dart';
import 'package:recepie_app/Sangkaya.dart';
import 'package:recepie_app/kanom.dart';
import 'package:recepie_app/nampla.dart';
import 'package:recepie_app/oliang.dart';
import 'package:recepie_app/somtum.dart';
import 'package:recepie_app/tomyum.dart';

class sodiumthai extends StatefulWidget {
  const sodiumthai({super.key});
  @override
  State<sodiumthai> createState() => _sodiumthaiState();
}

class _sodiumthaiState extends State<sodiumthai> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final horizontalPadding = screenWidth * 0.05;
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.4;
    final borderRadius = screenWidth * 0.025;
    final fontSizeTitle = screenWidth * 0.08;
    final fontSizeSubtitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.035;
    final spacingSmall = screenHeight * 0.01;
    final spacingMedium = screenHeight * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High Sodium Food',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle,
            color: Colors.green.shade800,
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
                  'Food To Avoid',
                  style: TextStyle(
                    fontSize: fontSizeSubtitle,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: spacingMedium),

            // First row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NamPla()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/a.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Nam Pla',
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => saikrokisan()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/b.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Sai Krok Isan',
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: spacingMedium),

            // Second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => somtum()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/c.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Som Tum',
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tomyum()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            'assets6/images6/tom.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacingSmall),
                    Text(
                      'Tom Yum',
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: spacingMedium),
          ],
        ),
      ),
    );
  }
}
