import 'package:flutter/material.dart';
import 'package:recepie_app/fries.dart';
import 'package:recepie_app/frytofu.dart';
import 'package:recepie_app/fw.dart';
import 'package:recepie_app/orange.dart';
import 'package:recepie_app/salt.dart';

class chinafatty2 extends StatefulWidget {
  const chinafatty2({super.key});

  @override
  State<chinafatty2> createState() => _chinafatty2State();
}

class _chinafatty2State extends State<chinafatty2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Fat rich Food',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
        ),
        body: SingleChildScrollView(

            child: Column(

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 15),

                  child: Align(
                    alignment: Alignment.centerLeft,

                    child: Text('Food  To Avoid', style: TextStyle(
                        fontSize: 20, color: Colors.green.shade800),),
                  ),
                ),
                SizedBox(height: 22,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>OrangeChickenPage()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets7/images7/e.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Orange Chicken',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>FriedWontonsPagee()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets7/images7/f.jpg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Fried Wontons',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>FriedTofuPage()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets7/images7/g.webp', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Deep-Fried Tofu',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>SaltPepperSpareRibsPage()));
                            },

                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets7/images7/h.jpeg', height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Text('Salt and Pepper Spare Ribs',style: TextStyle(color: Colors.green.shade800)),
                        ],
                      )
                    ],
                  ),
                ),


              ],
            )
        )


    );
  }
}
