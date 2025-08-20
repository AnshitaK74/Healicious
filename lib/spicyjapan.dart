import 'package:flutter/material.dart';
import 'package:recepie_app/miso.dart';
import 'package:recepie_app/okonomiyaki.dart';
import 'package:recepie_app/salmonsushi.dart';
import 'package:recepie_app/tempura2.dart';
import 'package:recepie_app/togarashi.dart';
import 'package:recepie_app/tonkatsu.dart';
import 'package:recepie_app/tonkatsu2.dart';
import 'package:recepie_app/wasabi.dart';
import 'package:recepie_app/yakitori.dart';

class spicyjapan extends StatefulWidget {
  const spicyjapan({super.key});

  @override
  State<spicyjapan> createState() => _spicyjapanState();
}

class _spicyjapanState extends State<spicyjapan> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spicy food',
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
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Wasabi()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets2/images2/wasabi.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Wasabi',
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
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => KaraMisoRamen()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets5/images5/only.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Kara Miso Ramen',
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
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SpicySalmonSushi()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets16/images16/sushi.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Spicy Salmon Sushi',
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
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Togarashi()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets6/images6/toga.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Shichimi Togarashi',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
