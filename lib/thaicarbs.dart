import 'package:flutter/material.dart';
import 'package:recepie_app/chow.dart';
import 'package:recepie_app/jeen.dart';
import 'package:recepie_app/niew.dart';
import 'package:recepie_app/padthai.dart';

class thaicarbs extends StatefulWidget {
  const thaicarbs ({super.key});

  @override
  State<thaicarbs> createState() => _thaicarbsState();
}

class _thaicarbsState extends State<thaicarbs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sugary Food',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Food To Avoid', style: TextStyle(fontSize: 20, color: Colors.green.shade800),),
                  ),
                ),
                SizedBox(height: 22,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => chowmein()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets5/images5/mochi.jpeg', height: 200, width: 150, fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Chow Mein',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => khaoniew()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets5/images5/kaki.webp', height: 200, width: 150, fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Khao Niew',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>khanjeen()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets5/images5/wagashi.jpeg', height: 200, width: 150, fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Khan Jeen',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => padthai()));
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets5/images5/ani.webp', height: 200, width: 150, fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Pad Thai ',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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
