import 'package:flutter/material.dart';
import 'package:recepie_app/chao.dart';
import 'package:recepie_app/mekhong.dart';
import 'package:recepie_app/singha.dart';
import 'package:recepie_app/som.dart';

class alcoholdiabetes extends StatefulWidget {
  const alcoholdiabetes({super.key});

  @override
  State<alcoholdiabetes> createState() => _alcoholdiabetesState();
}

class _alcoholdiabetesState extends State<alcoholdiabetes> {
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
                                  builder: (context) =>Sangsom()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/san.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('SangSom',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>Singha()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/singha.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Singha',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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
                                  builder: (context) =>Mekhong()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/m.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Mekhong',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>chaoThaiVodka()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets20/images20/vodka.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Chao Thai Vodka',style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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
