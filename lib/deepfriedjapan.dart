import 'package:flutter/material.dart';
import 'package:recepie_app/Karaage.dart';
import 'package:recepie_app/k.dart';
import 'package:recepie_app/tofu.dart';
import 'package:recepie_app/tonkatsu.dart';

class deepfriedjapan extends StatefulWidget {
  const deepfriedjapan({super.key});

  @override
  State<deepfriedjapan> createState() => _deepfriedjapanState();
}

class _deepfriedjapanState extends State<deepfriedjapan> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final borderRadius = BorderRadius.circular(screenWidth * 0.04);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deep Fried Food',
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
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food To Avoid',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tonkatsu()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets5/images5/tonkatsu.jpg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Tonkatsu',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => karaage()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets5/images5/karage.jpg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Karaage',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tofu()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets5/images5/tofu.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Agedashi Tofu',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => k()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets5/images5/k.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Korokke',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}
