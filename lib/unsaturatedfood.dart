import 'package:flutter/material.dart';
import 'package:recepie_app/bacon.dart';
import 'package:recepie_app/butter.dart';
import 'package:recepie_app/pastry.dart';
import 'package:recepie_app/sausages2.dart';
class unsaturatedfood extends StatefulWidget {
  const unsaturatedfood({super.key});

  @override
  State<unsaturatedfood> createState() => _unsaturatedfoodState();
}

class _unsaturatedfoodState extends State<unsaturatedfood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unsaturated Food',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
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
                            builder: (context) => butter()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets2/images2/butter.jpeg', height: 200,
                            width: 150,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Butter' )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => sausages2()));
                      },


                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets3/imgaes4/chivda.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('chivda')
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
                            MaterialPageRoute(builder: (context) =>pastry()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/images-13.jpeg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Pastry')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>bacon()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/bacon.webp', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Bacon')
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
