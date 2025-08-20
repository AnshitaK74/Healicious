import 'package:flutter/material.dart';
import 'package:recepie_app/samosa.dart';
import 'package:recepie_app/kachori.dart';
import 'package:recepie_app/vada pav.dart';
import 'package:recepie_app/pakora.dart';

class FriedFoodObesity extends StatefulWidget {
  const FriedFoodObesity({super.key});

  @override
  State<FriedFoodObesity> createState() => _FriedFoodObesityState();
}

class _FriedFoodObesityState extends State<FriedFoodObesity> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fried Food',
          style: TextStyle(
            fontSize: screenWidth * 0.08,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05, top: screenHeight * 0.02),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food  To Avoid',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
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
                                  builder: (context) => Samosa()));
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
                              'assets2/images2/samosa.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.38,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Samosa',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.green.shade800),
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
                                  builder: (context) => Kachori()));
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
                              'assets2/images2/kachori.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.38,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'kachori',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.green.shade800),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
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
                                  builder: (context) => Vadapav()));
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
                              'assets2/images2/vv.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.38,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'vada pav',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.green.shade800),
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
                                  builder: (context) => Pakora()));
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
                              'assets2/images2/pakora.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.38,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'pakora',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.green.shade800),
                      ),
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