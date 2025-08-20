import 'package:flutter/material.dart';
import 'package:recepie_app/campari.dart';
import 'package:recepie_app/grappa.dart';
import 'package:recepie_app/italycampari.dart';
import 'package:recepie_app/italygrappa.dart';
import 'package:recepie_app/italyvermouth.dart';
import 'package:recepie_app/p.dart';
import 'package:recepie_app/presco.dart';
import 'package:recepie_app/vermouth.dart';


class italyalcoholgut1 extends StatefulWidget {
  const  italyalcoholgut1({super.key});

  @override
  State< italyalcoholgut1> createState() => _italyalcoholgut1State();
}

class _italyalcoholgut1State extends State< italyalcoholgut1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Alcohol',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Alcohol to Avoid',
                        style: TextStyle(
                            fontSize: 20, color: Colors.green.shade800),
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
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => VermouthAlcohol()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/vermouth.webp',
                              // Replace with your image path
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Vermouth'),
                    ],
                  ),


                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CampariAlcohol()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/campari.jpeg',
                                  // Replace with your image path
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Campari'),
                        ],
                      ),
                      ]
                    )
                  ),
                      Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [

                            Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => ProseccoAlcohol()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/p.jpeg',
                                  // Replace with your image path
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Prosecco'),
                        ],
                      ),


                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>GrappaAlcohol()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets2/images2/grapes.jpeg',
                              // Replace with your image path
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Grappa'),
                    ],
                  ),
                ]
            )
        )
        ]

    )
    )
    );
  }
}
