import 'package:flutter/material.dart';
import 'package:recepie_app/barcel.dart';
import 'package:recepie_app/dua.dart';
import 'package:recepie_app/ganisto.dart';
import 'package:recepie_app/takis.dart';

class mexicansnacks2 extends StatefulWidget {
  const mexicansnacks2({super.key});

  @override
  State<mexicansnacks2> createState() => _mexicansnacks2State();
}

class _mexicansnacks2State extends State<mexicansnacks2> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery sizes
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Processed Snacks',
          style: TextStyle(
            fontSize: screenWidth * 0.07, // responsive
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Snacks To Avoid',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Takis()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                screenWidth * 0.03), // responsive radius
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.03),
                            child: Image.asset(
                              'assets8/images8/e.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Takis',
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
                              MaterialPageRoute(
                                  builder: (context) => Duvalin()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                screenWidth * 0.03),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.03),
                            child: Image.asset(
                              'assets8/images8/f.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Duvalín',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  )
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gansito()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                screenWidth * 0.03),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.03),
                            child: Image.asset(
                              'assets8/images8/h.webp',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Gansito',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => barcel()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                screenWidth * 0.03),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.03),
                            child: Image.asset(
                              'assets8/images8/g.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Barcel Chips',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
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
