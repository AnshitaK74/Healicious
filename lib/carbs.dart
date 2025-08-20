import 'package:flutter/material.dart';
import 'package:recepie_app/ceralsindian.dart';
import 'package:recepie_app/indianbread.dart';
import 'package:recepie_app/indiannoodles.dart';
import 'package:recepie_app/indianrice.dart';

class Carbs extends StatefulWidget {
  const Carbs({super.key});

  @override
  State<Carbs> createState() => _CarbsState();
}

class _CarbsState extends State<Carbs> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery for screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Refined Carbs',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // ~32 on 400 width device
            fontWeight: FontWeight.bold,
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
                'Food To Avoid',
                style: TextStyle(
                  fontSize: screenWidth * 0.05, // ~20 on 400 width device
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WhiteBreadPCOS1()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets2/images2/images-12.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'white bread',
                      style: TextStyle(color: Colors.green.shade800),
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
                                builder: (context) => WhiteRicePCOS1()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets2/images2/img_6.png',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'white Rice',
                      style: TextStyle(color: Colors.green.shade800),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CerealsPCOS1()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets2/images2/cereals.webp',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Cereals',
                      style: TextStyle(color: Colors.green.shade800),
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
                                builder: (context) => NoodlesPCOS1()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025)),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.025),
                          child: Image.asset(
                            'assets2/images2/images-11.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.38,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Noodles',
                      style: TextStyle(color: Colors.green.shade800),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
