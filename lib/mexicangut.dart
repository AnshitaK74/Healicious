import 'package:flutter/material.dart';
import 'package:recepie_app/fridaymexicandiabetes.dart';
import 'package:recepie_app/fridaymexicangut.dart';
import 'package:recepie_app/mexican%20alcohol.dart';
import 'package:recepie_app/mexicanartificial.dart';
import 'package:recepie_app/mexicandrinks.dart';
import 'package:recepie_app/mexicanfruits.dart';
import 'package:recepie_app/mexicangutfattyandfried.dart';
import 'package:recepie_app/mexicanprocess3.dart';
import 'package:recepie_app/mexicanspicygut.dart';
import 'package:recepie_app/mexicansugar2.dart';
import 'package:recepie_app/mondaymexicangut.dart';
import 'package:recepie_app/mondaymexicodiabetes.dart';
import 'package:recepie_app/saturdaymexican.dart';
import 'package:recepie_app/saturdaymexicangut.dart';
import 'package:recepie_app/thursdaymexicandiabetes.dart';
import 'package:recepie_app/thursdaymexicangut.dart';
import 'package:recepie_app/tuesdaymexicandiabtes.dart';
import 'package:recepie_app/tuesdaymexicangut.dart';
import 'package:recepie_app/wednesday3.dart';
import 'package:recepie_app/wednesdaymexicangut.dart';

class mexicangut extends StatefulWidget {
  const mexicangut ({super.key});

  @override
  State<mexicangut> createState() => _mexicangutState();
}

class _mexicangutState extends State<mexicangut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gut Problem',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
      ),

      body: SingleChildScrollView(child: Column(
          children: [
      Padding(
      padding: EdgeInsets.only(left: 20, top: 15),
            child:Align(
              alignment: Alignment.centerLeft,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mexicanartificial()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets8/images8/s.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Artificial Sweeteners', style: TextStyle(
                          fontSize: 16,color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mexicanfattyy()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets8/images8/qqq.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Fried and Fatty Foods', style: TextStyle(
                          fontSize: 16,color: Colors.green.shade800))
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mexicanCarbonated()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets8/images8/drink.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Carbonated Drinks', style: TextStyle(
                          fontSize: 16,color: Colors.green.shade800))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mexicanspicy()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets8/images8/r.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text(' Spicy Foods', style: TextStyle(
                          fontSize: 16,color: Colors.green.shade800)),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>mondayMexicanGutDiet()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets8/images8/anshita.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Monday', style: TextStyle(
                                fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>tuesdayMexicanGutDiet()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets9/images9/e.webp',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Tuesday', style: TextStyle(
                                fontSize: 16,color: Colors.green.shade800)),

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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>wednesdayMexicanGutDiet()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets9/images9/a.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('wednesday', style: TextStyle(
                                fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>thursdayMexicanGutDiet()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets9/images9/h.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Thursday', style: TextStyle(
                                fontSize: 16,color: Colors.green.shade800)),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>fridayMexicanGutDiet()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets8/images8/z.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Friday', style: TextStyle(
                                fontSize: 16,color: Colors.green.shade800)),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>saturdayMexicanGutDiet()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets9/images9/f.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Saturday', style: TextStyle(
                                fontSize: 16,color: Colors.green.shade800)),
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

