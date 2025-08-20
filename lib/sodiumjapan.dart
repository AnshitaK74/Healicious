import 'package:flutter/material.dart';
import 'package:recepie_app/japan%20soya.dart';
import 'package:recepie_app/mayo%20roll.dart';
import 'package:recepie_app/misosoup.dart';
import 'package:recepie_app/tt.dart';

class sodiumjapan extends StatefulWidget {
  const sodiumjapan({super.key});

  @override
  State<sodiumjapan> createState() => _sodiumjapanState();
}

class _sodiumjapanState extends State<sodiumjapan> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final borderRadius = BorderRadius.circular(screenWidth * 0.04);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High Sodium Food',
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
                            MaterialPageRoute(builder: (context) => misosoup()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets5/images5/miso.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Miso Soup',
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
                            context, MaterialPageRoute(builder: (context) => tt()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets5/images5/tt.jpg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Tsukemono',
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
                            MaterialPageRoute(builder: (context) => mayoroll()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets5/images5/spicy.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Spicy mayo roll',
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
                            MaterialPageRoute(builder: (context) => sauce12()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius,
                        ),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: Image.asset(
                            'assets16/images16/soya.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Soya Sauce',
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
