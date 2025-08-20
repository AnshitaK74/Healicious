import 'package:flutter/material.dart';
import 'package:recepie_app/carbs second.dart';
import 'package:recepie_app/fridayobese.dart';
import 'package:recepie_app/fried%20food%20obesity.dart';
import 'package:recepie_app/mondayobese.dart';
import 'package:recepie_app/processed.dart';
import 'package:recepie_app/saturdayobese.dart';
import 'package:recepie_app/sugaryfood.dart';
import 'package:recepie_app/thursdayobese.dart';
import 'package:recepie_app/tuesdayobese.dart';
import 'package:recepie_app/wednesdayobese.dart';

class obesityavoid extends StatefulWidget {
  const obesityavoid({super.key});

  @override
  State<obesityavoid> createState() => _obesityavoidState();
}

class _obesityavoidState extends State<obesityavoid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Obesity',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),),



      body: SingleChildScrollView(child: Column(
          children: [
            SizedBox(height: 14,),
            Align(
              alignment: Alignment.centerLeft,
            child:Padding(padding: EdgeInsets.only(left: 25),
            child: Text('Food categories To Avoid', style: TextStyle(
                fontSize: 20, color: Colors.green.shade800),),
            ),
            ),
            SizedBox(height: 20),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FriedFoodObesity()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/fried.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Fried Food', style: TextStyle(fontSize: 16,color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>carbssecond()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/images-12.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Carbs', style: TextStyle(fontSize: 16,color: Colors.green.shade800))
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>processed()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/pp.jpg',height: 200,width: 150,fit: BoxFit.cover,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>sugaryfood1()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/s.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Sugary Food', style: TextStyle(fontSize: 16,color: Colors.green.shade800)),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MondayObese()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets4/img4/dal.jpg',height: 200,width: 150,fit: BoxFit.cover,),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TuesdayObese()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets4/img4/potato.jpg',height: 200,width: 150,fit: BoxFit.cover,),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>WednesdayObese()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets4/img4/chana.jpg',height: 200,width: 150,fit: BoxFit.cover,),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThursdayObese()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets4/img4/namkeen.webp',height: 200,width: 150,fit: BoxFit.cover,),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FridayObese()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets4/img4/ppm.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SaturdayObese()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets2/images2/dal.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
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

