import 'package:flutter/material.dart';
import 'package:recepie_app/biscuits.dart';
import 'package:recepie_app/icecream.dart';
import 'package:recepie_app/jam.dart';
import 'package:recepie_app/pastry.dart';

class sugaryfood1 extends StatefulWidget {
  const sugaryfood1({super.key});

  @override
  State<sugaryfood1> createState() => _sugaryfood1State();
}

class _sugaryfood1State extends State<sugaryfood1> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sugary Foods',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.08, // same style as processed.dart
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Foods To Avoid',
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => icecream()),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        child: Image.asset(
                          'assets2/images2/ice.jpg',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.38,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Ice cream',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
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
                        MaterialPageRoute(builder: (context) => biscuits()),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        child: Image.asset(
                          'assets2/images2/b.jpg',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.38,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Biscuits',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.green.shade800,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pastry()),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        child: Image.asset(
                          'assets2/images2/images-13.jpeg',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.38,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Pastry',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
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
                        MaterialPageRoute(builder: (context) => jam()),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth * 0.025),
                        child: Image.asset(
                          'assets2/images2/jam.jpg',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.38,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Jam',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.green.shade800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
