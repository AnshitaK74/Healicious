import 'package:flutter/material.dart';
class day7 extends StatefulWidget {
  const day7({super.key});

  @override
  State<day7> createState() => _day7State();
}

class _day7State extends State<day7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            title: Row(

                children: [
                  Flexible(child:
                  Text("7 Days No JunkFood Challenge",
                    style: TextStyle(fontSize: 28,
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,),)
                ]

            )
        ),


        body: Padding(padding: const EdgeInsets.all(16),
            child: Column(
                children: [
                  const Divider(
                    thickness: 2,
                    color: Colors.green,
                    indent: 0,
                  ),
                  Padding(padding: const EdgeInsets.all(16),


                    child: Text('Swap junk food with healthier option',
                      style: TextStyle(color: Colors.green,
                          fontWeight: FontWeight.normal,
                          fontSize: 22),),
                  ),


                  const Chip(label: Text(
                    'Day 7', style: TextStyle(color: Colors.green),),
                    side:
                    BorderSide(
                        color: Colors.green,
                        width: 1
                    ),
                  ),
                  SizedBox(height: 30,),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [


                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets13/images13/chiip.jpeg',
                                        height: 200,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                              Text('Chips'),
                            ]

                        ),
                        Icon(
                          Icons.arrow_forward, color: Colors.green, size: 30,),
                        Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [


                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets13/images13/pea.jpg', height: 200,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('Chick Peas')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 80),


                ]
            )
        )

    );
  }
}
