import 'package:flutter/material.dart';
import 'package:recepie_app/alootikki.dart';
import 'package:recepie_app/cholebhature.dart';
import 'package:recepie_app/samosa3.dart';
import 'package:recepie_app/vada.dart';

class fattydigestion extends StatefulWidget {
  const fattydigestion({super.key});

  @override
  State<fattydigestion> createState() => _fattydigestionState();
}

class _fattydigestionState extends State<fattydigestion> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High GI',
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
                  'Food  To Avoid',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
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
                              MaterialPageRoute(builder: (context) =>AlooTikki()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets3/imgaes4/aloo.webp',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Aloo Tikki',
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
                              builder: (context) => cholebhature()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets3/imgaes4/chla.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Chole Bhature',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: screenWidth * 0.035,
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
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => samosa3()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets2/images2/samosa.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Samosa',
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
                              MaterialPageRoute(builder: (context) => vada()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius:  BorderRadius.circular(screenWidth * 0.025),),

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(screenWidth * 0.025),

                            child: Image.asset(
                              'assets3/imgaes4/vada.webp',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Medu Vada',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: screenWidth * 0.035,
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
