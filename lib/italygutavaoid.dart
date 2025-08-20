import 'package:flutter/material.dart';
import 'package:recepie_app/fridayguthealtg.dart';
import 'package:recepie_app/fridayitalydiabates.dart';



import 'package:recepie_app/glutenchina.dart';
import 'package:recepie_app/italiancarbsdiabetes.dart';
import 'package:recepie_app/italianprocess500.dart';
import 'package:recepie_app/italiansodiumdiabetes.dart';
import 'package:recepie_app/italiansugaryfooddiabetes.dart';
import 'package:recepie_app/italyalcoholgut.dart';
import 'package:recepie_app/italyfry.dart';
import 'package:recepie_app/italyfrygut.dart';
import 'package:recepie_app/italygluten.dart';
import 'package:recepie_app/italyglutengut.dart';
import 'package:recepie_app/italyprocess%20gut.dart';
import 'package:recepie_app/italyprocesskk.dart';
import 'package:recepie_app/mondayitaliandiabeteas.dart';
import 'package:recepie_app/mondayitalygut.dart';
import 'package:recepie_app/mondaymexicanobese.dart';
import 'package:recepie_app/saturdayguthealth.dart';
import 'package:recepie_app/saturdayitalydiabetes.dart';
import 'package:recepie_app/thursdayitalianpcos.dart';


import 'package:recepie_app/thursdayitalydiabetes.dart';
import 'package:recepie_app/thursdaymexicanobese.dart';
import 'package:recepie_app/thusdaygut.dart';
import 'package:recepie_app/tuesday.dart';
import 'package:recepie_app/tuesdayitalygut.dart';

import 'package:recepie_app/tuesdaymexicanobesity.dart';
import 'package:recepie_app/wednesdayitalydiabetes.dart';
import 'package:recepie_app/wednesdayitalygut.dart';

class italygutavoid extends StatefulWidget {
  const italygutavoid ({super.key});

  @override
  State<italygutavoid> createState() => _italygutavoidState();
}

class _italygutavoidState extends State<italygutavoid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gut Problem',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
      ),

      body: SingleChildScrollView(child: Column(

          children: [
            Align(
              alignment: Alignment.centerLeft,
      child: Padding(
      padding: EdgeInsets.all(15),
           child:  Text('Food categories To Avoid', style: TextStyle(
                fontSize: 20, color: Colors.green.shade800),),),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>italyalcoholgut1()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets12/images12/alcohol.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Alcohol', style: TextStyle(fontSize: 16,color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>italyfryy1()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets12/images12/crisp.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Fried and fatty food', style: TextStyle(fontSize: 16,color: Colors.green.shade800))
                    ],
                  ),

                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>italyprocessk()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets12/images12/chips.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Processed Food', style: TextStyle(fontSize: 16,color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>italygluten()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets12/images12/milk.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Gluten or Dairy(if intolerant)',style: TextStyle(color: Colors.green.shade700)),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text('DIET PLAN',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
                Container(


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MondayItalianGut()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets12/images12/aaa.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Monday', style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TuesdayMexicanObesity()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets12/images12/g.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Tuesday', style: TextStyle(fontSize: 16,color: Colors.green.shade800)),

                          ],
                        ),

                      ],
                    )
                ),
                Container(


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>WednesdayItalianGutHighProtein()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets6/images6/hot.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('wednesday', style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThursdayPCOSItalianDishes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets7/images7/b.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Thursday', style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),

                      ],
                    )
                ),
                Container(


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FridayItalianGutHighProtein()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets7/images7/4.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Friday', style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SaturdayItalianGutHighProtein()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets14/images14/img.png',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Saturday', style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),

                      ],
                    )
                ),
              ],
            ),
          ]

      )
      ),
    );
  }
}

