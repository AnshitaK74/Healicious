import 'package:flutter/material.dart';
import 'package:recepie_app/Pad%20Kra%20Pao.dart';
import 'package:recepie_app/againSangkhaya.dart';
import 'package:recepie_app/againTub%20Tim%20Grob.dart';
import 'package:recepie_app/beer1.dart';
import 'package:recepie_app/beer200.dart';
import 'package:recepie_app/beer300.dart';
import 'package:recepie_app/beer400.dart';
import 'package:recepie_app/chayen400.dart';
import 'package:recepie_app/cookies.dart';
import 'package:recepie_app/dim%20sum.dart';
import 'package:recepie_app/divyansh.dart';
import 'package:recepie_app/frytofu2.dart';
import 'package:recepie_app/kanomjeeb.dart';
import 'package:recepie_app/lo%20mein.dart';
import 'package:recepie_app/pad1.dart';
import 'package:recepie_app/pancake.dart';
import 'package:recepie_app/pazzta.dart';
import 'package:recepie_app/potatoes.dart';
import 'package:recepie_app/rice.dart';
import 'package:recepie_app/shallots.dart';
import 'package:recepie_app/sweet.dart';
import 'package:recepie_app/thaicurry100.dart';
import 'package:recepie_app/todmunpla.dart';
import 'package:recepie_app/wontonsoup.dart';
class dairythai111 extends StatefulWidget {
  const dairythai111({super.key});

  @override
  State<dairythai111> createState() => _dairythai111State();
}

class _dairythai111State extends State<dairythai111> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Alcohol',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
        ),
        body: SingleChildScrollView(

            child: Column(

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 15),

                  child: Align(
                    alignment: Alignment.centerLeft,

                    child: Text('Food  To Avoid', style: TextStyle(
                        fontSize: 20, color: Colors.green.shade800),),
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
                                  builder: (context) =>beer100()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/g.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Beer',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>laokhaob()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/h.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Lao Khao ',style: TextStyle(color: Colors.green.shade800)),
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
                                  builder: (context) => chang()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/i.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Chang',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>yadongg()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/j.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Yadong',style: TextStyle(color: Colors.green.shade800)),
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
