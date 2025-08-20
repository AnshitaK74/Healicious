import 'package:flutter/material.dart';
import 'package:recepie_app/Youtiao.dart';
import 'package:recepie_app/bubbletea.dart';
import 'package:recepie_app/char%20sieu.dart';
import 'package:recepie_app/cookies.dart';
import 'package:recepie_app/creamy.dart';
import 'package:recepie_app/dim%20sum.dart';
import 'package:recepie_app/dim.dart';
import 'package:recepie_app/hotpot.dart';
import 'package:recepie_app/lo%20mein.dart';
import 'package:recepie_app/longan.dart';
import 'package:recepie_app/lychee.dart';
import 'package:recepie_app/nashi.dart';
import 'package:recepie_app/naughtyamerica.dart';
import 'package:recepie_app/pazzta.dart';
import 'package:recepie_app/pitaya.dart';
import 'package:recepie_app/potatoes.dart';
import 'package:recepie_app/pudding.dart';
import 'package:recepie_app/red.dart';
import 'package:recepie_app/rice.dart';
import 'package:recepie_app/rule.dart';
import 'package:recepie_app/spring.dart';
import 'package:recepie_app/sweet.dart';
import 'package:recepie_app/tarts.dart';
import 'package:recepie_app/wontonsoup.dart';
class chinahigh extends StatefulWidget {
  const chinahigh({super.key});

  @override
  State<chinahigh> createState() => _chinahighState();
}

class _chinahighState extends State<chinahigh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('High Sugar Fruits',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
        ),
        body: SingleChildScrollView(

            child: Column(

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 15),

                  child: Align(
                    alignment: Alignment.centerLeft,

                    child: Text('Fruits  To Avoid', style: TextStyle(
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
                                  builder: (context) =>Pitaya()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/121.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Pitaya',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>NashiPear()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/pear.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Nashi Pear',style: TextStyle(color: Colors.green.shade800)),
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
                                  builder: (context) => Longan()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/qq.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Longan',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>Lychee()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets16/images16/lychee.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Lychee ',style: TextStyle(color: Colors.green.shade800)),
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
