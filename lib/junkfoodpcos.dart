import 'package:flutter/material.dart';
class junkfoodpcos extends StatefulWidget {
  const junkfoodpcos({super.key});

  @override
  State<junkfoodpcos> createState() => _junkfoodpcosState();
}

class _junkfoodpcosState extends State<junkfoodpcos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('JunkFood', style: TextStyle(fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800),),
        ),

        body: SingleChildScrollView(
    child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Sugary foods and Drinks', style: TextStyle(
                      fontSize: 20, color: Colors.green.shade800),),),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets2/images2/images-13.jpeg', height: 200,
                              width: 150,
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Text('Pastry',style: TextStyle(color: Colors.green.shade800)),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets2/images2/soda.jpg',
                                  height: 200, width: 150, fit: BoxFit.cover,),
                              ),
                            ),
                            Text('Soda',style: TextStyle(color: Colors.green.shade800))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Fast food', style: TextStyle(
                              fontSize: 20, color: Colors.green.shade800),)

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets2/images2/pizza.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                            Text('Pizza',style: TextStyle(color: Colors.green.shade800))
                          ],
                        ),

                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30)),
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets2/images2/burger.webp', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                            Text('Burger',style: TextStyle(color: Colors.green.shade800))
                          ],
                        ),

                      ],
                    )

                  ],
                ),
              ),

            ]
        )

        )

    );
  }
}