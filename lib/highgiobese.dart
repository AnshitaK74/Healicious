import 'package:flutter/material.dart';
import 'package:recepie_app/kanomkrok.dart';
import 'package:recepie_app/kanomkrok2.dart';
import 'package:recepie_app/khao.dart';
import 'package:recepie_app/khaopad2.dart';
import 'package:recepie_app/padthai.dart';
import 'package:recepie_app/padthai2.dart';
import 'package:recepie_app/stickyrice.dart';
import 'package:recepie_app/thai2.dart';

class highgithai1 extends StatefulWidget {
  const highgithai1({super.key});

  @override
  State<highgithai1> createState() => _highgithai1State();
}

class _highgithai1State extends State<highgithai1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('High GI', style: TextStyle(
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

                    child: Text('Food Categories To Avoid', style: TextStyle(
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
                                  builder: (context) => padthai2()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets6/images6/ola.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Pad thai',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>kanomkrok2()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets6/images6/coco.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text(' Kanom Krok',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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
                                  builder: (context) => khaopad2()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets6/images6/khao.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('khao pad',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => stickymango12()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets6/images6/thai.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Thai sticky rice',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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