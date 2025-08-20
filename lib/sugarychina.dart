import 'package:flutter/material.dart';
import 'package:recepie_app/boba.dart';
import 'package:recepie_app/chayen.dart';
import 'package:recepie_app/herbal.dart';
import 'package:recepie_app/soy.dart';

class sugarychina extends StatefulWidget {
  const sugarychina({super.key});

  @override
  State<sugarychina> createState() => _chinacarbsState();
}

class _chinacarbsState extends State<sugarychina> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sugary Beverages',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.08, // responsive font
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                top: screenHeight * 0.02,
              ),
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
                            MaterialPageRoute(builder: (context) => ChaYen()),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets6/images6/yen.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'cha yen',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
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
                            MaterialPageRoute(builder: (context) => BobaTea()),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets6/images6/d.webp',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Boba Tea',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  )
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
                                builder: (context) => SweetenedSoyaMilk()),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets6/images6/soy.webp',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Sweetened Soy Milk',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
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
                                builder: (context) => ChineseHerbalDrink()),
                          );
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets6/images6/herbel.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Chinese Herbal Drinks',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
