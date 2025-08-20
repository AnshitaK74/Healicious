import 'package:flutter/material.dart';
import 'package:recepie_app/coca%20cola.dart';
import 'package:recepie_app/fanta.dart';
import 'package:recepie_app/soda2.dart';
import 'package:recepie_app/wine2.dart';

class carbonated extends StatefulWidget {
  const carbonated({super.key});

  @override
  State<carbonated> createState() => _carbonatedState();
}

class _carbonatedState extends State<carbonated> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carbonated Drinks',
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
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                top: screenHeight * 0.015,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Drinks  To Avoid',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.022),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => soda2()));
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
                              'assets3/imgaes4/sodaa.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Soda',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Wine2()));
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
                              'assets3/imgaes4/divyansh.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Wine',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => cocacola()));
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
                              'assets2/images2/cl.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Coca Cola',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => fanta()));
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
                              'assets3/imgaes4/fanta.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Fanta',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.green.shade800,
                        ),
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
