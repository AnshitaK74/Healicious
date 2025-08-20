import 'package:flutter/material.dart';
import 'package:recepie_app/Chimichangas.dart';
import 'package:recepie_app/Taquitos.dart';
import 'package:recepie_app/chimi.dart';
import 'package:recepie_app/deep.dart';
import 'package:recepie_app/nachos.dart';

class mexicanfattyy extends StatefulWidget {
  const mexicanfattyy({super.key});

  @override
  State<mexicanfattyy> createState() => _mexicanfattyyState();
}

class _mexicanfattyyState extends State<mexicanfattyy> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final cardHeight = screenHeight * 0.25;
    final cardWidth = screenWidth * 0.4;
    final cardRadius = screenWidth * 0.025;
    final titleFontSize = screenWidth * 0.08;
    final subtitleFontSize = screenWidth * 0.05;
    final textFontSize = screenWidth * 0.035;
    final paddingSize = screenWidth * 0.05;
    final rowSpacing = screenHeight * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fried & Fatty Foods',
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(paddingSize),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food To Avoid',
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: rowSpacing),
            // Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chimichanga()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/chimi.jpg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Chimichanga',
                      style: TextStyle(
                        fontSize: textFontSize,
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
                            MaterialPageRoute(builder: (context) => taquitos()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/taq.jpeg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Taquitos',
                      style: TextStyle(
                        fontSize: textFontSize,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: rowSpacing),
            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => deepFriedTacos()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/opl.jpg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Deep Fried Tacos',
                      style: TextStyle(
                        fontSize: textFontSize,
                        color: Colors.green.shade800,
                      ),
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
                                builder: (context) => loadedNachos()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/uiop.jpg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Loaded Nachos',
                      style: TextStyle(
                        fontSize: textFontSize,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: rowSpacing),
          ],
        ),
      ),
    );
  }
}
