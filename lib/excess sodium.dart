import 'package:flutter/material.dart';
import 'package:recepie_app/aachar.dart';
import 'package:recepie_app/gravies.dart';
import 'package:recepie_app/panipuri.dart';
import 'package:recepie_app/readymademasala.dart';

class excesssodium extends StatefulWidget {
  const excesssodium({super.key});

  @override
  State<excesssodium> createState() => _excesssodiumState();
}

class _excesssodiumState extends State<excesssodium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXCESS SODIUM',style: TextStyle(fontSize: 32,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
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
                            builder: (context) => aachar()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets2/images2/aachar.webp', height: 200,
                            width: 150,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Aachar')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => panipuri()));
                      },


                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/pani.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Pani puri')
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
                            MaterialPageRoute(builder: (context) =>readymademasala()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/masala.jpg', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Ready made masala')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>gravies()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              'assets2/images2/gravies.webp', height: 200,
                              width: 150,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text('Restaurant gravies')
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
