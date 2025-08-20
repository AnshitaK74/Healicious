import 'package:flutter/material.dart';
import 'package:recepie_app/dulces.dart';
import 'package:recepie_app/hot.dart';
import 'package:recepie_app/nata.dart';
import 'package:recepie_app/pan.dart';

class mexicansugar extends StatefulWidget {
  const mexicansugar({super.key});

  @override
  State<mexicansugar> createState() => _mexicansugarState();
}

class _mexicansugarState extends State<mexicansugar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final cardWidth = screenWidth * 0.35;
    final cardHeight = screenHeight * 0.25;
    final cardRadius = screenWidth * 0.025;
    final paddingAll = screenWidth * 0.05;
    final titleFontSize = screenWidth * 0.07;
    final textFontSize = screenWidth * 0.045;
    final spacingHeight = screenHeight * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sugary Food',
          style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(paddingAll),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food To Avoid',
                  style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                ),
              ),
            ),
            // Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PanDeMuerto()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets7/images7/zxc.jpeg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: cardWidth,
                      child: Text(
                        'Pan de muerto',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MexicanHotChocolate()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets7/images7/hot.jpg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: cardWidth,
                      child: Text(
                        'Mexican Hot Chocolate',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: spacingHeight),
            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => GorditasDeNata()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets7/images7/vv.jpg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: cardWidth,
                      child: Text(
                        'Gorditas de nata',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Dulces()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cardRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets7/images7/cold.jpeg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: cardWidth,
                      child: Text(
                        'Dulces',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textFontSize, color: Colors.green.shade800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: spacingHeight),
          ],
        ),
      ),
    );
  }
}
