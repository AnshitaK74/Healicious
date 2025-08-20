import 'package:flutter/material.dart';
import 'package:recepie_app/Cotoletta%20alla%20Milanese.dart';
import 'package:recepie_app/Focaccia.dart';
import 'package:recepie_app/Fritto%20Misto.dart';
import 'package:recepie_app/Gorgonzola.dart';
import 'package:recepie_app/Lasagna122.dart';
import 'package:recepie_app/Panna%20Cotta.dart';
import 'package:recepie_app/Polpette%20Fritte.dart';
import 'package:recepie_app/campari.dart';
import 'package:recepie_app/frozenpizza.dart';
import 'package:recepie_app/grappa.dart';
import 'package:recepie_app/p.dart';
import 'package:recepie_app/pasta.dart';
import 'package:recepie_app/suppli.dart';
import 'package:recepie_app/vermouth.dart';


class italyglutengut extends StatefulWidget {
  const  italyglutengut({super.key});

  @override
  State< italyglutengut> createState() => _italyglutengutState();
}

class _italyglutengutState extends State< italyglutengut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Gluten or Dairy(if intolerant)',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade800,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Fried and Fatty Food',
                        style: TextStyle(
                            fontSize: 20, color: Colors.blue.shade800),
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => Focaccia()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets12/images12/goa.webp',
                              // Replace with your image path
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Focaccia '),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Gorgonzola()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets12/images12/cheese.jpeg',
                                  // Replace with your image path
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Gorgonzola'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>Lasagna111()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets12/images12/rty.jpeg',
                                  // Replace with your image path
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Lasagna '),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>PannaCotta()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets12/images12/iop.jpeg',
                              // Replace with your image path
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Panna Cotta'),
                    ],
                  ),
                ]
            )
        )
    );
  }
}
