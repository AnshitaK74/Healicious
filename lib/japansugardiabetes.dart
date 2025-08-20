import 'package:flutter/material.dart';
import 'package:recepie_app/anni.dart';
import 'package:recepie_app/mochijapan.dart';
import 'package:recepie_app/ramune.dart';

import 'package:recepie_app/ramunesoda.dart';
import 'package:recepie_app/taiyaki.dart';
import 'package:recepie_app/mochi.dart';

class sugarydiabetes1 extends StatefulWidget {
  const sugarydiabetes1({super.key});

  @override
  State<sugarydiabetes1> createState() => _sugarydiabetes1State();
}

class _sugarydiabetes1State extends State<sugarydiabetes1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sugary Food/Drinks',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Food/Drinks To Avoid',
                    style: TextStyle(fontSize: 20, color: Colors.green.shade800),
                  ),
                ),
              ),
              SizedBox(height: 22),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ramune1()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets16/images16/ramune.jpeg',
                                height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('Ramune Soda',
                            style: TextStyle(color: Colors.green.shade800)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => anmitsu1()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets16/images16/anni.jpeg',
                                height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('Anmitsu',
                            style: TextStyle(color: Colors.green.shade800)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => taiyaki1()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets16/images16/taiyaki.jpeg',
                                height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('Taiyaki',
                            style: TextStyle(color: Colors.green.shade800)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => mochi1()));
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets13/images13/k.jpg',
                                height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text('Mochi ',
                            style: TextStyle(color: Colors.green.shade800)),
                      ],
                    )
                  ],
                ),
              ),
            ])));
  }
}
