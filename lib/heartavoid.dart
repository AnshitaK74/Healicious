// import 'package:flutter/material.dart';
// import 'package:recepie_app/carbsheart.dart';
// import 'package:recepie_app/highheart.dart';
// import 'package:recepie_app/processed2.dart';
// import 'package:recepie_app/sodium.dart';
//
// class heartavoid extends StatefulWidget {
//   const heartavoid({super.key});
//
//   @override
//   State<heartavoid> createState() => _heartavoidState();
// }
//
// class _heartavoidState extends State<heartavoid> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text('HEART DISEASE',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),),
//
//
//
//       body: SingleChildScrollView(child: Column(
//           children: [
//             SizedBox(height: 14,),
//             Align(
//               alignment: Alignment.centerLeft,
//               child:Padding(padding: EdgeInsets.only(left: 25),
//                 child: Text('Food categories To Avoid', style: TextStyle(
//                     fontSize: 20, color: Colors.green.shade800),),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>highheart()));
//                         },
//
//                         child: Card(
//                           elevation: 6,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset('assets3/imgaes4/cheese.webp',height: 200,width: 150,fit: BoxFit.cover,),
//                           ),
//                         ),
//                       ),
//                       Text('High saturated Fat Food')
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>carbsheart()));
//                         },
//
//                         child: Card(
//                           elevation: 6,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset('assets3/imgaes4/bread.jpg',height: 200,width: 150,fit: BoxFit.cover,),
//                           ),
//                         ),
//                       ),
//                       Text('Carbs')
//                     ],
//                   ),
//
//                 ],
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>sodium()));
//                         },
//
//                         child: Card(
//                           elevation: 6,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset('assets3/imgaes4/salt.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
//                           ),
//                         ),
//                       ),
//                       Text('High Sodium Food')
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>processed2()));
//                         },
//
//                         child: Card(
//                           elevation: 6,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset('assets4/img4/pp.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
//                           ),
//                         ),
//                       ),
//                       Text('Processed Food'),
//                     ],
//                   ),
//
//                 ],
//               ),
//             ),
//             Column(
//               children: [
//                 Text('DIET PLAN',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
//                 Container(
//
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
//
//                               },
//                               child: Card(
//                                 elevation: 4,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset('assets2/images2/idli.jpg',height: 200,width: 150,fit: BoxFit.cover,),
//                                 ),
//                               ),
//                             ),
//                             Text('Monday'),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
//
//                               },
//                               child: Card(
//                                 elevation: 4,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset('assets2/images2/salad.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
//                                 ),
//                               ),
//                             ),
//                             Text('Tuesday'),
//
//                           ],
//                         ),
//
//                       ],
//                     )
//                 ),
//                 Container(
//
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
//
//                               },
//                               child: Card(
//                                 elevation: 4,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset('assets2/images2/chole.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
//                                 ),
//                               ),
//                             ),
//                             Text('wednesday'),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
//
//                               },
//                               child: Card(
//                                 elevation: 4,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset('assets2/images2/plate.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
//                                 ),
//                               ),
//                             ),
//                             Text('Thursday'),
//                           ],
//                         ),
//
//                       ],
//                     )
//                 ),
//                 Container(
//
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
//
//                               },
//                               child: Card(
//                                 elevation: 4,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset('assets2/images2/sarso.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
//                                 ),
//                               ),
//                             ),
//                             Text('Friday'),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>mondaypcos()));
//
//                               },
//                               child: Card(
//                                 elevation: 4,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset('assets2/images2/dal.jpeg',height: 200,width: 150,fit: BoxFit.cover,),
//                                 ),
//                               ),
//                             ),
//                             Text('Saturday'),
//                           ],
//                         ),
//
//                       ],
//                     )
//                 ),
//               ],
//             ),
//           ]
//
//       )
//       ),
//     );
//   }
// }
//
