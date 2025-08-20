import 'package:flutter/material.dart';
import 'package:recepie_app/Cotoletta%20alla%20Milanese.dart';
import 'package:recepie_app/Fritto%20Misto.dart';
import 'package:recepie_app/Polpette%20Fritte.dart';
import 'package:recepie_app/campari.dart';
import 'package:recepie_app/frozenpizza.dart';
import 'package:recepie_app/grappa.dart';
import 'package:recepie_app/p.dart';
import 'package:recepie_app/pasta.dart';
import 'package:recepie_app/suppli.dart';
import 'package:recepie_app/vermouth.dart';


class italyprocessgut extends StatefulWidget {
  const  italyprocessgut({super.key});

  @override
  State< italyprocessgut> createState() => _italyprocessgutState();
}

class _italyprocessgutState extends State< italyprocessgut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Processed Food',
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
                                  builder: (context) => FrozenPizza1()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets12/images12/frozen.webp',
                              // Replace with your image path
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Frozen Pizza'),
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
                                          CannedPasta1()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets12/images12/spa.jpeg',
                                  // Replace with your image path
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Canned Pasta'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Suppli()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets12/images12/dd.jpg',
                                  // Replace with your image path
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Supplì '),
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
                                  builder: (context) =>PolpetteFritte()));
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets12/images12/ee.jpeg',
                              // Replace with your image path
                              height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text('Polpette Fritte'),
                    ],
                  ),
                ]
            )
        )
    );
  }
}
