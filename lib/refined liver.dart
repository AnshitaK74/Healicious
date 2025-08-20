import 'package:flutter/material.dart';
import 'package:recepie_app/bread.dart';
import 'package:recepie_app/flavour.dart';
import 'package:recepie_app/naan.dart';
import 'package:recepie_app/wr.dart';

class refinedliver extends StatefulWidget {
  const refinedliver({super.key});

  @override
  State<refinedliver> createState() => _refinedliverState();
}

class _refinedliverState extends State<refinedliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REFINED CARBS', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.green.shade800),),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Foods/Drinks To Avoid', style: TextStyle(
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
                            builder: (context) =>wr()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets2/images2/rr.webp', height: 200,
                            width: 150,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('White Rice')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>naan()));
                      },


                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/naan.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Naan')
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
                            MaterialPageRoute(builder: (context) => bread()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/bread.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('white bread')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => flavour()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/by.webp', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Flavoured Alcohol')
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

