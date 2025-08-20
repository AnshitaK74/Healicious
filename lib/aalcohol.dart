import 'package:flutter/material.dart';
import 'package:recepie_app/beer.dart';
import 'package:recepie_app/flavour.dart';
import 'package:recepie_app/vodka.dart';
import 'package:recepie_app/wine.dart';

class aalcohol extends StatefulWidget {
  const aalcohol({super.key});

  @override
  State<aalcohol> createState() => _aalcoholState();
}

class _aalcoholState extends State<aalcohol> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alcohol',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.08,
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
                'Drinks To Avoid',
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
                          MaterialPageRoute(builder: (context) => beer()));
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/beer.jpg',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Beer',
                    style: TextStyle(fontSize: screenWidth * 0.045),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => wine()));
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/wine.jpeg',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Wine',
                    style: TextStyle(fontSize: screenWidth * 0.045),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vodka()));
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/vodka.jpg',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Vodka',
                    style: TextStyle(fontSize: screenWidth * 0.045),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => flavour()));
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/by.webp',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Flavoured Alcohol',
                    style: TextStyle(fontSize: screenWidth * 0.045),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
