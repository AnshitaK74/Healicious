import 'package:flutter/material.dart';
import 'package:recepie_app/gulab.dart';
import 'package:recepie_app/ice.dart';
import 'package:recepie_app/jalebi.dart';
import 'package:recepie_app/rasgulla.dart';

class sugaryfood2 extends StatefulWidget {
  const sugaryfood2({super.key});

  @override
  State<sugaryfood2> createState() => _sugaryfood2State();
}

class _sugaryfood2State extends State<sugaryfood2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sugary Food', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.green.shade800),),
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
                            builder: (context) => gulab()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets2/images2/gulab.jpg', height: 200,
                            width: 150,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Gulab Jamun',
                        style: TextStyle(color: Colors.green.shade800))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>jalebi()));
                      },


                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/jalebi.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Jalebi',
                        style: TextStyle(color: Colors.green.shade800))
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
                            MaterialPageRoute(builder: (context) => rasgulla()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/Rasgulla.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Rasgulla',
                        style: TextStyle(color: Colors.green.shade800))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ice()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/cream.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Ice Cream',
                        style: TextStyle(color: Colors.green.shade800))
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

