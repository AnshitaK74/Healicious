import 'package:flutter/material.dart';
import 'package:recepie_app/fruitsoda.dart';
import 'package:recepie_app/mexican%20sodas.dart';
import 'package:recepie_app/mexicancola.dart';
import 'package:recepie_app/mexicanenergy.dart';
import 'package:recepie_app/mexicansodagut.dart';
import 'package:recepie_app/mexicosoda.dart';

class mexicanCarbonated extends StatefulWidget {
  const mexicanCarbonated({super.key});

  @override
  State<mexicanCarbonated> createState() => _mexicanCarbonatedState();
}

class _mexicanCarbonatedState extends State<mexicanCarbonated> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery values
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
          'Carbonated Drinks',
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
                  'Drinks To Avoid',
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
                                builder: (context) => MexicanSodass()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets7/images7/soda.jpeg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Mexican Soda',
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
                            MaterialPageRoute(builder: (context) => mexicanCola()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/cola.jpeg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Mexican Cola',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => mexicanFruitSoda()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/fruitsoda.jpg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Mexican Fruit Soda',
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
                            MaterialPageRoute(builder: (context) => mexicanEnergyDrink()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardRadius),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cardRadius),
                          child: Image.asset(
                            'assets8/images8/offo.jpeg',
                            height: cardHeight,
                            width: cardWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Mexican Energy Drinks',
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
