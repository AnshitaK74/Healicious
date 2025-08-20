import 'package:flutter/material.dart';
import 'package:recepie_app/Karaage.dart';
import 'package:recepie_app/k.dart';
import 'package:recepie_app/karageobese.dart';
import 'package:recepie_app/karokke.dart';
import 'package:recepie_app/tofu.dart';
import 'package:recepie_app/tofuobese.dart';
import 'package:recepie_app/tonkatsu.dart';
import 'package:recepie_app/tonkatsujapan.dart';

class deepfriedjapan1 extends StatefulWidget {
  const deepfriedjapan1({super.key});

  @override
  State<deepfriedjapan1> createState() => _deepfriedjapan1State();
}

class _deepfriedjapan1State extends State<deepfriedjapan1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Deep Fried Food', style: TextStyle(
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

                    child: Text('Food To Avoid', style: TextStyle(
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
                                  builder: (context) => tonkatsu1()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/tonkatsu.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Tonkatsu ',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>karaageo()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/karage.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Karaage ',style: TextStyle(color: Colors.green.shade800)),
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
                                  builder: (context) =>agadeshitofu1()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/tofu.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Agedashi Tofu',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => karokke1()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets5/images5/k.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text(' Korokke ',style: TextStyle(color: Colors.green.shade800)),
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
