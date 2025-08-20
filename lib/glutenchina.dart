import 'package:flutter/material.dart';
import 'package:recepie_app/can.dart';
import 'package:recepie_app/dump.dart';
import 'package:recepie_app/instant2.dart';
import 'package:recepie_app/msg.dart';
import 'package:recepie_app/cheese2.dart';
import 'package:recepie_app/chinacurd.dart';
import 'package:recepie_app/milk2.dart';
import 'package:recepie_app/milkpowder.dart';

class Chinadairy extends StatefulWidget {
  const Chinadairy({super.key});

  @override
  State<Chinadairy> createState() => _ChinadairyState();
}

class _ChinadairyState extends State<Chinadairy> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dairy',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.08,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.02),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Foods to Avoid',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CheeseImpact()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets16/images16/cheese.jpg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text('Cheese', style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.green.shade800,
                    )),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => YogurtImpact()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets16/images16/yoga.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text('Yogurt', style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.green.shade800,
                    )),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            // Repeat the next row for Milk Powder and Milk
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MilkPowderImpact()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets16/images16/milkpowder.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text('Milk Powder', style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.green.shade800,
                    )),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MilkImpact()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets16/images16/mu.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text('Milk', style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.green.shade800,
                    )),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
          ],
        ),
      ),
    );
  }
}
