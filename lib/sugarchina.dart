import 'package:flutter/material.dart';
import 'package:recepie_app/Youtiao.dart';
import 'package:recepie_app/bao.dart';
import 'package:recepie_app/bubble.dart';
import 'package:recepie_app/bubbletea.dart';
import 'package:recepie_app/char%20sieu.dart';
import 'package:recepie_app/coconut.dart';
import 'package:recepie_app/cookies.dart';
import 'package:recepie_app/creamy.dart';
import 'package:recepie_app/dim%20sum.dart';
import 'package:recepie_app/dim.dart';
import 'package:recepie_app/duck.dart';
import 'package:recepie_app/honey.dart';
import 'package:recepie_app/hotpot.dart';
import 'package:recepie_app/lo%20mein.dart';
import 'package:recepie_app/longan.dart';
import 'package:recepie_app/lychee.dart';
import 'package:recepie_app/lycheetea.dart';
import 'package:recepie_app/nashi.dart';
import 'package:recepie_app/naughtyamerica.dart';
import 'package:recepie_app/noodles2.dart';
import 'package:recepie_app/pazzta.dart';
import 'package:recepie_app/pitaya.dart';
import 'package:recepie_app/potatoes.dart';
import 'package:recepie_app/pudding.dart';
import 'package:recepie_app/red.dart';
import 'package:recepie_app/rice.dart';
import 'package:recepie_app/rule.dart';
import 'package:recepie_app/spring.dart';
import 'package:recepie_app/sweet.dart';
import 'package:recepie_app/taro.dart';
import 'package:recepie_app/tarts.dart';
import 'package:recepie_app/wontonsoup.dart';
class sugarchina extends StatefulWidget {
  const sugarchina({super.key});

  @override
  State<sugarchina> createState() => _sugarchinaState();
}

class _sugarchinaState extends State<sugarchina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Sugary Beverages',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
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
                                  builder: (context) =>BubbleTea()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets2/images2/rice.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Bubble tea'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>TaroMilkTea()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets2/images2/ppp.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Taro Milk Tea'),
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
                                  builder: (context) => CoconutWaterWithSugar()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets2/images2/paazta.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Coconut Water with Sugar'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>LycheeIcedTea()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets2/images2/cookies.webp', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Lychee Iced Tea'),
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
