// import 'package:flutter/material.dart';
// class cusinechoose extends StatefulWidget {
//   const cusinechoose({super.key});
//
//   @override
//   State<cusinechoose> createState() => _cusinechooseState();
// }
//
// class _cusinechooseState extends State<cusinechoose> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Text(
//               'Healthy Swaps', style: TextStyle(color: Colors.green.shade800),),
//             centerTitle: true
//         ),
//         body: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                       children: [
//                         Card(
//                           elevation: 6,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset('assets15/images15/japan.jpeg'),
//                           ),
//                         ),
//                         SizedBox(height: 2,),
//                         Text('Japnease',
//                           style: TextStyle(color: Colors.green.shade800),)
//                       ]
//                   ),
//                   Column(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(
//                               builder: (context) => japnease5()));
//                         },
//                         child: Card(
//
//                           elevation: 4,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset(
//                               'assets/images/img_6.png', fit: BoxFit
//                                 .cover, height: 200, width: 150,),
//
//                           ),
//
//                         ),
//                       ),
//                       Text('Indian', style: TextStyle(
//                           fontSize: 16, color: Colors.green.shade800),),
//
//
//                     ],
//                   ),
//
//
//                   Container(
//                       width: double.infinity,
//                       padding: EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Column(
//                             children: [
//                               InkWell(
//                                 onTap: () {
//                                   Navigator.push(context, MaterialPageRoute(
//                                       builder: (context) => japnese3()));
//                                 },
//
//
//                                 child: Card(
//                                     elevation: 4,
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(10)),
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Image.asset(
//                                         'assets/images/img_8.png', fit: BoxFit
//                                           .cover, height: 200, width: 150,),
//
//                                     )
//
//                                 ),
//                               ),
//                               Text('Thai', style: TextStyle(fontSize: 16,color: Colors.green.shade800),),
//
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               InkWell(
//                                 onTap: () {
//                                   Navigator.push(context, MaterialPageRoute(
//                                       builder: (context) => japnease5()));
//                                 },
//                                 child: Card(
//
//                                   elevation: 4,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       'assets/images/img_9.png', fit: BoxFit
//                                         .cover, height: 200, width: 150,),
//
//                                   ),
//
//                                 ),
//                               ),
//                               Text('Chinese', style: TextStyle(fontSize: 16,color: Colors.green.shade800),),
//
//
//                             ],
//                           )
//                         ],
//                       )
//
//                   ),
//
//                   Container(
//                     width: double.infinity,
//                     padding: EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Column(
//                               children: [
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.push(context, MaterialPageRoute(
//                                         builder: (context) => japnease5()));
//                                   },
//
//                                   child: Card(
//                                       elevation: 4,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(
//                                               10)),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10),
//                                         child: Image.asset(
//                                           'assets/images/img_23.png',
//                                           fit: BoxFit.cover,
//                                           height: 200,
//                                           width: 150,),
//                                       )
//
//
//                                   ),
//                                 ),
//                                 Text('Mexican', style: TextStyle(
//                                     fontSize: 16,color: Colors.green.shade800),),
//                               ],
//                             ),
//                             Column(
//                               children: [InkWell(
//                                 onTap: () {
//                                   Navigator.push(context, MaterialPageRoute(
//                                       builder: (context) => japnease6()));
//                                 },
//
//
//                                 child: Card(
//                                   elevation: 4,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                         'assets/images/img_15.png',
//                                         fit: BoxFit.cover,
//                                         height: 200,
//                                         width: 150),
//                                   ),
//                                 ),
//                               ),
//                                 Text('Italian', style: TextStyle(
//                                     fontSize: 16,color: Colors.green.shade800),),
//                               ],
//                             )
//                           ],
//                         ),
//
//                       ],
//                     ),
//                   )
//                 ]
//         )
//     )
//     );
//   }
// }
