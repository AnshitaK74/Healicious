import 'package:flutter/material.dart';
import 'package:recepie_app/cheese.dart';
import 'package:recepie_app/creamgravy.dart';
import 'package:recepie_app/full%20cream.dart';

import 'package:recepie_app/ghee2.dart';

class dairyproducts extends StatefulWidget {
  const dairyproducts({super.key});

  @override
  State<dairyproducts> createState() => _dairyproductsState();
}

class _dairyproductsState extends State<dairyproducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DAIRY',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Foods To Avoid', style: TextStyle(
                  fontSize: 20, color: Colors.green.shade800
              ),),
            ),

          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => fullcream()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets2/images2/doodh.webp', height: 200,
                            width: 150,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Full cream milk')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => creamgravy()));
                      },


                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/gg.webp', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('cream based gravies')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 26,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>cheese()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/cheese.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Cheese')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>ghee2()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/ghee.webp', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Ghee')
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
