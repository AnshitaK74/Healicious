import 'package:flutter/material.dart';
import 'package:recepie_app/coffeejapan.dart';
import 'package:recepie_app/fattyjapan2.dart';
import 'package:recepie_app/fridaygut.dart';
import 'package:recepie_app/mondaygut.dart';
import 'package:recepie_app/saturdaygut.dart';
import 'package:recepie_app/spicyjapan.dart';
import 'package:recepie_app/thursdaygut.dart';
import 'package:recepie_app/tuesdaygut.dart';
import 'package:recepie_app/ultrajapan.dart';
import 'package:recepie_app/wednesdaygut.dart';

class gutjapan extends StatefulWidget {
  const gutjapan({super.key});

  @override
  State<gutjapan> createState() => _gutjapanState();
}

class _gutjapanState extends State<gutjapan> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final scaleW = screenWidth / 411;
    final scaleH = screenHeight / 890;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gut Problem',
          style: TextStyle(
            fontSize: 32 * scaleW,
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 14 * scaleH),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 25 * scaleW),
              child: Text(
                'Food categories To Avoid',
                style: TextStyle(
                  fontSize: 20 * scaleW,
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          SizedBox(height: 20 * scaleH),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10 * scaleW),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => fattyjapan2()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10 * scaleW)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10 * scaleW),
                          child: Image.asset(
                            'assets2/images2/paazta.jpeg',
                            height: 200 * scaleH,
                            width: 150 * scaleW,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ' Fatty and Fried Foods',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 14 * scaleW),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => spicyjapan()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10 * scaleW)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10 * scaleW),
                          child: Image.asset(
                            'assets3/imgaes4/al.webp',
                            height: 200 * scaleH,
                            width: 150 * scaleW,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ' Spicy Foods',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 14 * scaleW),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10 * scaleW),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ultrajapan()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10 * scaleW)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10 * scaleW),
                          child: Image.asset(
                            'assets2/images2/sweet.jpeg',
                            height: 200 * scaleH,
                            width: 150 * scaleW,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ' Ultra-Processed Foods',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 14 * scaleW),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => coffeejapan()));
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10 * scaleW)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10 * scaleW),
                          child: Image.asset(
                            'assets3/imgaes4/cook.jpg',
                            height: 200 * scaleH,
                            width: 150 * scaleW,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Carbonated Drinks',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 14 * scaleW),
                    ),
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
                  fontSize: 32 * scaleW,
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => mondayGutJapan()));
                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10 * scaleW)),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(10 * scaleW),
                                  child: Image.asset(
                                    'assets5/images5/eggroll.jpeg',
                                    height: 200 * scaleH,
                                    width: 150 * scaleW,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Monday',
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 14 * scaleW),
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
                                        builder: (context) => tuesdayGutJapan()));
                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10 * scaleW)),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(10 * scaleW),
                                  child: Image.asset(
                                    'assets5/images5/matcha.webp',
                                    height: 200 * scaleH,
                                    width: 150 * scaleW,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Tuesday',
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 14 * scaleW),
                            ),
                          ],
                        ),
                      ])),
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
                                        builder: (context) =>
                                            wednesdayGutJapan()));
                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10 * scaleW)),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(10 * scaleW),
                                  child: Image.asset(
                                    'assets5/images5/edamame.jpg',
                                    height: 200 * scaleH,
                                    width: 150 * scaleW,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'wednesday',
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 14 * scaleW),
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
                                            thursdayGutJapan()));
                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10 * scaleW)),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(10 * scaleW),
                                  child: Image.asset(
                                    'assets5/images5/choy.jpeg',
                                    height: 200 * scaleH,
                                    width: 150 * scaleW,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Thursday',
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 14 * scaleW),
                            ),
                          ],
                        ),
                      ])),
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
                                        builder: (context) => fridayGutJapan()));
                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10 * scaleW)),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(10 * scaleW),
                                  child: Image.asset(
                                    'assets5/images5/anko.jpeg',
                                    height: 200 * scaleH,
                                    width: 150 * scaleW,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Friday',
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 14 * scaleW),
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
                                            saturdayGutJapan()));
                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10 * scaleW)),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(10 * scaleW),
                                  child: Image.asset(
                                    'assets5/images5/boil.jpg',
                                    height: 200 * scaleH,
                                    width: 150 * scaleW,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Saturday',
                              style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 14 * scaleW),
                            ),
                          ],
                        ),
                      ])),
            ],
          ),
        ]),
      ),
    );
  }
}
