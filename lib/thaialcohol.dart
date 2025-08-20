import 'package:flutter/material.dart';
import 'package:recepie_app/gaitod.dart';
import 'package:recepie_app/kanomkrok.dart';
import 'package:recepie_app/kanomkrok2.dart';
import 'package:recepie_app/khao.dart';
import 'package:recepie_app/khaopad2.dart';
import 'package:recepie_app/laokhao.dart';
import 'package:recepie_app/mama.dart';
import 'package:recepie_app/mekhong2.dart';
import 'package:recepie_app/padthai.dart';
import 'package:recepie_app/padthai2.dart';
import 'package:recepie_app/pohthai.dart';
import 'package:recepie_app/stickyrice.dart';
import 'package:recepie_app/thai2.dart';
import 'package:recepie_app/thaibeer.dart';
import 'package:recepie_app/wafers.dart';
import 'package:recepie_app/yadong.dart';

class thaialcohol extends StatefulWidget {
  const thaialcohol({super.key});

  @override
  State<thaialcohol> createState() => _thaialcoholState();
}

class _thaialcoholState extends State<thaialcohol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Alcohol', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800
          ),),
        ),

        body: SingleChildScrollView(

            child: Column(

              children: [
                Padding(
                  padding: EdgeInsets.all(20),

                  child: Align(
                    alignment: Alignment.centerLeft,

                    child: Text('Drinks To Avoid', style: TextStyle(
                        fontSize: 20, color: Colors.green.shade800),),
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
                                  builder: (context) =>beer3()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/img_6.png', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Beer',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>laokhao3()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/lao.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Lao Khao',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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
                                  builder: (context) => yadong3()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/ya.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Ya Dong',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => mekhong3()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/mekhong.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Mekhong',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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