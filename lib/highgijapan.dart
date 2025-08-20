import 'package:flutter/material.dart';
import 'package:recepie_app/cracker.dart';
import 'package:recepie_app/ramen.dart';
import 'package:recepie_app/sauce.dart';
import 'package:recepie_app/tempura.dart';

class highgijapan extends StatefulWidget {
  const highgijapan({super.key});

  @override
  State<highgijapan> createState() => _highgijapanState();
}

class _highgijapanState extends State<highgijapan> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text('High Gi', style: TextStyle(
              fontSize: screenWidth * 0.08,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800
          ),),
        ),

        body: SingleChildScrollView(

            child: Column(

              children: [
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.05),

                  child: Align(
                    alignment: Alignment.centerLeft,

                    child: Text('Food To Avoid', style: TextStyle(
                        fontSize: screenWidth * 0.05, color: Colors.green.shade800),),
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
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => sauce()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/japan.jpg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text('Teriyaki Sauce Dish',
                              style: TextStyle(color: Colors.green.shade800, fontSize: screenWidth * 0.035)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ramen()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/noodles.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text('Ramen',
                              style: TextStyle(color: Colors.green.shade800, fontSize: screenWidth * 0.035)),
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
                                  builder: (context) => cracker()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/rice.jpeg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text('Rice Cracker',
                              style: TextStyle(color: Colors.green.shade800, fontSize: screenWidth * 0.035)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => tempura()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/tempura.jpg',
                                  height: screenHeight * 0.25,
                                  width: screenWidth * 0.4,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text('Tempura',
                              style: TextStyle(color: Colors.green.shade800, fontSize: screenWidth * 0.035)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
        )
    );
  }
}
