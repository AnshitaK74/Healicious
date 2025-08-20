import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:recepie_app/japnease.dart';
import 'package:recepie_app/japnease4.dart';
import 'package:recepie_app/japnease5.dart';
import 'package:recepie_app/japnease6.dart';
import 'package:recepie_app/japnese2.dart';
import 'package:recepie_app/japnese3.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text('Healicious',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.08,
                  color: Colors.green.shade800)),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(vertical: h * 0.015),
                          hintText: 'search',
                          prefixIcon: Icon(Icons.search,
                              color: Colors.green.shade800, size: w * 0.06),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(w * 0.05),
                              borderSide:
                              BorderSide(color: Colors.green.shade800)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.05),
                            borderSide:
                            BorderSide(color: Colors.green, width: w * 0.005),
                          ),
                        ),
                      )),
                  SizedBox(height: h * 0.03),
                  CarouselSlider(
                    items: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(w * 0.025),
                          child: Image.asset('assets/images/img.png',
                              fit: BoxFit.cover, width: w),
                        ),
                      ),
                      Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(w * 0.025),
                            child: Image.asset('assets/images/img_26.png',
                                fit: BoxFit.cover, width: w),
                          )),
                      Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(w * 0.025),
                            child: Image.asset('assets/images/img_4.png',
                                fit: BoxFit.cover, width: w),
                          )),
                      Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(w * 0.025),
                            child: Image.asset('assets/images/img_5.png',
                                fit: BoxFit.cover, width: w)),
                      ),
                    ],
                    options: CarouselOptions(
                      height: h * 0.25,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.05),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Cuisines',
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.bold,
                                fontSize: w * 0.06),
                          ),
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(w * 0.025),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => japnese2()));
                                    },
                                    child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(w * 0.025)),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(w * 0.025),
                                          child: Image.asset(
                                            'assets/images/sushi.jpeg',
                                            fit: BoxFit.cover,
                                            height: h * 0.25,
                                            width: w * 0.4,
                                          ),
                                        )),
                                  ),
                                  SizedBox(height: h * 0.01),
                                  Text('Japanese',
                                      style: TextStyle(
                                          fontSize: w * 0.045,
                                          color: Colors.green.shade800)),
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => japnease()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(w * 0.025)),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(w * 0.025),
                                        child: Image.asset(
                                          'assets/images/img_6.png',
                                          fit: BoxFit.cover,
                                          height: h * 0.25,
                                          width: w * 0.4,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text('Indian',
                                      style: TextStyle(
                                          fontSize: w * 0.045,
                                          color: Colors.green.shade800)),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(w * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => japnese3()));
                                },
                                child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(w * 0.025)),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(w * 0.025),
                                      child: Image.asset(
                                        'assets/images/img_8.png',
                                        fit: BoxFit.cover,
                                        height: h * 0.25,
                                        width: w * 0.4,
                                      ),
                                    )),
                              ),
                              Text('Thai',
                                  style: TextStyle(
                                      fontSize: w * 0.045,
                                      color: Colors.green.shade800)),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => japnease4()));
                                },
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(w * 0.025)),
                                  child: ClipRRect(
                                    borderRadius:
                                    BorderRadius.circular(w * 0.025),
                                    child: Image.asset(
                                      'assets/images/img_9.png',
                                      fit: BoxFit.cover,
                                      height: h * 0.25,
                                      width: w * 0.4,
                                    ),
                                  ),
                                ),
                              ),
                              Text('Chinese',
                                  style: TextStyle(
                                      fontSize: w * 0.045,
                                      color: Colors.green.shade800)),
                            ],
                          )
                        ],
                      )),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(w * 0.025),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => japnease5()));
                                  },
                                  child: Card(
                                      elevation: 4,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(w * 0.025)),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(w * 0.025),
                                        child: Image.asset(
                                          'assets/images/img_23.png',
                                          fit: BoxFit.cover,
                                          height: h * 0.25,
                                          width: w * 0.4,
                                        ),
                                      )),
                                ),
                                Text('Mexican',
                                    style: TextStyle(
                                        fontSize: w * 0.045,
                                        color: Colors.green.shade800)),
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => japnease6()));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(w * 0.025)),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(w * 0.025),
                                      child: Image.asset(
                                        'assets/images/img_15.png',
                                        fit: BoxFit.cover,
                                        height: h * 0.25,
                                        width: w * 0.4,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Italian',
                                    style: TextStyle(
                                        fontSize: w * 0.045,
                                        color: Colors.green.shade800)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ])));
  }
}
