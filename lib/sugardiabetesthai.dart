import 'package:flutter/material.dart';
import 'package:recepie_app/icetea.dart';
import 'package:recepie_app/kanom2.dart';
import 'package:recepie_app/kluaytod2.dart';
import 'package:recepie_app/lod.dart';
import 'package:recepie_app/mango2.dart';
import 'package:recepie_app/milktea.dart';
import 'package:recepie_app/niew.dart';
import 'package:recepie_app/padsa.dart';

class thaidiabetes1111 extends StatefulWidget {
  const thaidiabetes1111({super.key});

  @override
  State<thaidiabetes1111> createState() => _thaidiabetes1111State();
}

class _thaidiabetes1111State extends State<thaidiabetes1111> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sugary Food',
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
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.02,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sweets or Drinks To Avoid',
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ThaiIcedTea()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/21.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Thai Iced Tea',
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
                                      builder: (context) => MangoStickyRic1e()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/76.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Mango Sticky Rice',
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
                                      builder: (context) => LodChongDessert()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/lod.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Lod Chong Dessert',
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
                                      builder: (context) => ThaiSweetMilkTea()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/img_2.png',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Thai Sweet Milk Tea',
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
            )));
  }
}
