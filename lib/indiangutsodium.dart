import 'package:flutter/material.dart';
import 'package:recepie_app/aachar2.dart';
import 'package:recepie_app/cheese4.dart';
import 'package:recepie_app/namkeen2.dart';
import 'package:recepie_app/noodlesindian.dart';

class HighSodiumFoods6 extends StatefulWidget {
  const HighSodiumFoods6({super.key});

  @override
  State<HighSodiumFoods6> createState() => _HighSodiumFoods6State();
}

class _HighSodiumFoods6State extends State<HighSodiumFoods6> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High Sodium Foods',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // Responsive font size
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
                            MaterialPageRoute(builder: (context) => Aachar11()));
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
                            'assets2/images2/aachar.webp',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Pickles',
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
                                builder: (context) =>
                                    InstantNoodlesInfoq()));
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
                            'assets20/images20/81.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Instant Noodles',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.green.shade800,
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
                            MaterialPageRoute(builder: (context) => NamkeenInfoz()));
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
                            'assets20/images20/nam.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Salted Namkeen',
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
                                builder: (context) =>
                                    ProcessedCheeseInfoa()));
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
                            'assets20/images20/cheese.jpeg',
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Processed Cheese',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.green.shade800,
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
