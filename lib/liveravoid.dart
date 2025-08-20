import 'package:flutter/material.dart';
import 'package:recepie_app/aalcohol.dart';
import 'package:recepie_app/high%20fat%20liver.dart';
import 'package:recepie_app/refined%20liver.dart';
import 'package:recepie_app/sugaryfood2.dart';

class liveravoid extends StatefulWidget {
  const liveravoid({super.key});

  @override
  State<liveravoid> createState() => _liveravoidState();
}

class _liveravoidState extends State<liveravoid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('LIVER DISEASE',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),),



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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>highfatliver()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/bhatura.webp',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('High Fat')
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>sugaryfood2()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/rasmalai.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Sugary Food')
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>aalcohol()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/aalcohol.webp',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Alcohol')
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>refinedliver()));
                        },

                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets2/images2/dal.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text('Refined carbs'),
                    ],
                  ),

                ],
              ),
            ),
            // Column(
            //   children: [
            //     Text('DIET PLAN',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
            //     Container(
            //
            //
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Column(
            //               children: [
            //                 GestureDetector(
            //                   onTap: (){
            //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
            //
            //                   },
            //                   child: Card(
            //                     elevation: 4,
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(10),
            //                       child: Image.asset('assets2/images2/idli.jpg',height: 200,width: 150,fit: BoxFit.cover,),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Monday'),
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 GestureDetector(
            //                   onTap: (){
            //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
            //
            //                   },
            //                   child: Card(
            //                     elevation: 4,
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(10),
            //                       child: Image.asset('assets2/images2/salad.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Tuesday'),
            //
            //               ],
            //             ),
            //
            //           ],
            //         )
            //     ),
            //     Container(
            //
            //
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Column(
            //               children: [
            //                 GestureDetector(
            //                   onTap: (){
            //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
            //
            //                   },
            //                   child: Card(
            //                     elevation: 4,
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(10),
            //                       child: Image.asset('assets2/images2/chole.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('wednesday'),
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 GestureDetector(
            //                   onTap: (){
            //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
            //
            //                   },
            //                   child: Card(
            //                     elevation: 4,
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(10),
            //                       child: Image.asset('assets2/images2/plate.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Thursday'),
            //               ],
            //             ),
            //
            //           ],
            //         )
            //     ),
            //     Container(
            //
            //
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Column(
            //               children: [
            //                 GestureDetector(
            //                   onTap: (){
            //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
            //
            //                   },
            //                   child: Card(
            //                     elevation: 4,
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(10),
            //                       child: Image.asset('assets2/images2/sarso.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Friday'),
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 GestureDetector(
            //                   onTap: (){
            //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
            //
            //                   },
            //                   child: Card(
            //                     elevation: 4,
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(10),
            //                       child: Image.asset('assets2/images2/dal.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Saturday'),
            //               ],
            //             ),
            //
            //           ],
            //         )
            //     ),
            //   ],
            // ),
          ]

      )
      ),
    );
  }
}

