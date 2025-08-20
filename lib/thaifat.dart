import 'package:flutter/material.dart';
import 'package:recepie_app/kai%20yat%20sai.dart';
import 'package:recepie_app/panang.dart';
import 'package:recepie_app/pork.dart';
import 'package:recepie_app/tom.dart';


class thaifat extends StatefulWidget {
  const thaifat ({super.key});

  @override
  State<thaifat> createState() => _thaifatState();
}

class _thaifatState extends State<thaifat> {
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
                                  builder: (context) => panang()));
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
                          Text('Panang Curry'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => crispPorkBelly()));
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
                          Text('Crispy Pork Belly'),
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
                                  builder: (context) =>khaiYatSai()));
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
                          Text('Kai Yat Sai'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => tomKhaGai()));
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
                          Text('Tom Kha Gai '),
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
