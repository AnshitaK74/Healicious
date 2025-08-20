import 'package:flutter/material.dart';
import 'package:recepie_app/fridayitalydiabates.dart';

import 'package:recepie_app/fridaymexicanobese.dart';
import 'package:recepie_app/fridaymexico.dart';

import 'package:recepie_app/glutenchina.dart';
import 'package:recepie_app/italiancarbsdiabetes.dart';
import 'package:recepie_app/italianprocess500.dart';
import 'package:recepie_app/italiansodiumdiabetes.dart';
import 'package:recepie_app/italiansugaryfooddiabetes.dart';
import 'package:recepie_app/mexican%20alcohol.dart';
import 'package:recepie_app/mexicancarbs.dart';
import 'package:recepie_app/mexicanfry.dart';
import 'package:recepie_app/mexicanprocess.dart';
import 'package:recepie_app/mexicansugar.dart';
import 'package:recepie_app/mexicansugarobese.dart';
import 'package:recepie_app/mexicanwednesdayobese.dart';

import 'package:recepie_app/mondaychinagut.dart';
import 'package:recepie_app/mondayitaliandiabeteas.dart';
import 'package:recepie_app/mondaymexicanobese.dart';
import 'package:recepie_app/saturdayitalydiabetes.dart';

import 'package:recepie_app/saturdaymexicanobese.dart';
import 'package:recepie_app/saturdaymexico.dart';
import 'package:recepie_app/thursdayitalydiabetes.dart';
import 'package:recepie_app/thursdaymexicanobese.dart';
import 'package:recepie_app/tuesday.dart';
import 'package:recepie_app/tuesdayitalydiabetes.dart';

import 'package:recepie_app/tuesdaymexicanobesity.dart';
import 'package:recepie_app/wednesdayitalydiabetes.dart';

class italydiabeteas extends StatefulWidget {
  const italydiabeteas ({super.key});

  @override
  State<italydiabeteas> createState() => _italydiabeteasState();
}

class _italydiabeteasState extends State<italydiabeteas > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diabeteas',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
      ),

      body: SingleChildScrollView(child: Column(
          children: [
            Align(
        alignment: Alignment.centerLeft,
    child:Padding(padding: EdgeInsets.only(left: 25),
            child: Text('Food categories To Avoid', style: TextStyle(
                fontSize: 20, color: Colors.green.shade800),),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SugaryItems1()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets12/images12/a.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Sugary Foods/Drinks',style: TextStyle(color: Colors.green.shade800),)
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RefinedCarbsItems1()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets7/images7/chips.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Refined Carbohydrates',style: TextStyle(color: Colors.green.shade800))
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HighSodiumItems12()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets12/images12/i.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('High-Sodium Foods',style: TextStyle(color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PackagedProcessedFoods()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets12/images12/o.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text(' Processed Foods',style: TextStyle(color: Colors.green.shade800)),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MondayItalianDiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets6/images6/ola.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Monday',style: TextStyle(color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>tuesdayItalianDiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets12/images12/b.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Tuesday',style: TextStyle(color: Colors.green.shade800)),

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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>WednesdayItalianDiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets15/images15/4.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('wednesday',style: TextStyle(color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThursdayItalianDiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets15/images15/3.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Thursday',style: TextStyle(color: Colors.green.shade800)),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FridayItalianDiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets15/images15/2.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Friday',style: TextStyle(color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SaturdayItalianDiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets15/images15/1.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Saturday',style: TextStyle(color: Colors.green.shade800)),
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

