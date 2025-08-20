import 'package:flutter/material.dart';
import 'package:recepie_app/friday.dart';
import 'package:recepie_app/japanalcohol.dart';
import 'package:recepie_app/japanhighgi.dart';
import 'package:recepie_app/japanhighgi2.dart';
import 'package:recepie_app/mondaydiabetes.dart';
import 'package:recepie_app/mondaydiabetesjapan.dart';
import 'package:recepie_app/processedjapan.dart';
import 'package:recepie_app/saturday.dart';
import 'package:recepie_app/saturdayy.dart';
import 'package:recepie_app/sugaryjapan3.dart';
import 'package:recepie_app/thursdayk.dart';
import 'package:recepie_app/tuesday2.dart';
import 'package:recepie_app/tuesdaydiabetes.dart';
class japandiabetes extends StatefulWidget {
  const japandiabetes({super.key});

  @override
  State<japandiabetes> createState() => _japandiabetesState();
}

class _japandiabetesState extends State<japandiabetes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Diabetes',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),),



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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>japanhighgi3()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/paazta.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('High GI',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>sugaryjapan3()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/s.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Sugary Food',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),)
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>processedjapan()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/butter.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Processed Food',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>japanalcohol()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/alcohol.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Alcohol',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaydiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets2/images2/idli.jpg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Monday',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>tuesdaydiabetes()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets2/images2/salad.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Tuesday',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),

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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>wednesday()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets2/images2/chole.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('wednesday',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>thursdayk()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets2/images2/plate.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Thursday',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>friday()));

                              },
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets2/images2/sarso.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Text('Friday',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>saturday()));

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
                            Text('Saturday',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
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

