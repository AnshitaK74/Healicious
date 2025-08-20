import 'package:flutter/material.dart';
import 'package:recepie_app/carbsjapan.dart';
import 'package:recepie_app/deep%20fried%20obese.dart';
import 'package:recepie_app/deepfriedjapan.dart';
import 'package:recepie_app/fridayjapanobese.dart';
import 'package:recepie_app/fried%20food%20obesity.dart';
import 'package:recepie_app/obesejapan.dart';
import 'package:recepie_app/processedjapan.dart';
import 'package:recepie_app/saturdayjapanobese.dart';
import 'package:recepie_app/sugary%20japan.dart';
import 'package:recepie_app/thursdayjapanobese.dart';
import 'package:recepie_app/tuesdayjapanobese.dart';
import 'package:recepie_app/wednesdayjapanobese.dart';

class obeseavoidjapan extends StatefulWidget {
  const obeseavoidjapan({super.key});

  @override
  State<obeseavoidjapan> createState() => _obeseavoidjapanState();
}

class _obeseavoidjapanState extends State<obeseavoidjapan> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Obesity',
          style: TextStyle(
            fontSize: width * 0.07,
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Food categories To Avoid',
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => deepfriedjapan1()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets13/images13/g.jpeg',
                            height: height * 0.28,
                            width: width * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('Fried Food',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => carbsjapan()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets13/images13/h.webp',
                            height: height * 0.28,
                            width: width * 0.35,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('Carbs',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04))
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => processedjapan()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets13/images13/i.jpg',
                            height: height * 0.28,
                            width: width * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('Processed Food',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => sugaryjapan1()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width * 0.025)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.025),
                          child: Image.asset(
                            'assets13/images13/j.jpeg',
                            height: height * 0.28,
                            width: width * 0.40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text('Sugary Food',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: width * 0.04)),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'DIET PLAN',
                style: TextStyle(
                  fontSize: width * 0.07,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => obesejapan()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets5/images5/fruit.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Monday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => tuesdayjapanobese()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets5/images5/selena.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Tuesday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                  ],
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => wednesdayjapanobese()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets5/images5/klin2.jpg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Wednesday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => thursdayjapanobese()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets5/images5/ad.jpeg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Thursday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                  ],
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => fridayjapanobese()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets5/images5/vahi.jpg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Friday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => saturdayjapanobese()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width * 0.025)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(width * 0.025),
                              child: Image.asset(
                                'assets5/images5/hot.jpg',
                                height: height * 0.28,
                                width: width * 0.40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Text('Saturday',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: width * 0.04)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
