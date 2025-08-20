import 'package:flutter/material.dart';
import 'package:recepie_app/Frozen%20Meatballs.dart';
import 'package:recepie_app/Pre-cooked%20Polenta.dart';
import 'package:recepie_app/cereals.dart';
import 'package:recepie_app/italysausage.dart';
import 'package:recepie_app/mozerella.dart';
import 'package:recepie_app/processed%20meat.dart';
import 'package:recepie_app/snacks.dart';
import 'package:recepie_app/sugarydrinks.dart';

class processitaly extends StatefulWidget {
  const processitaly({super.key});

  @override
  State<processitaly> createState() => _processitalyState();
}

class _processitalyState extends State<processitaly> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cardWidth = screenSize.width * 0.35;
    final cardHeight = screenSize.height * 0.25;
    final imageHeight = screenSize.height * 0.22;
    final imageWidth = screenSize.width * 0.35;
    final titleFont = screenSize.width * 0.08;
    final sectionFont = screenSize.width * 0.05;
    final labelFont = screenSize.width * 0.04;
    final spacing = screenSize.height * 0.03;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Processed food',
          style: TextStyle(
            fontSize: titleFont,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(screenSize.width * 0.05),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Foods To Avoid',
                style: TextStyle(
                  fontSize: sectionFont,
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sausages1()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child:Image.asset(
                            'assets11/images11/sa.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Text(
                      'Italian Sausage',
                      style: TextStyle(
                        fontSize: labelFont,
                        color: Colors.green.shade800,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FrozenMeatballsPage()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets11/images11/frozen.webp',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Text(
                      'Frozen Meatballs',
                      style: TextStyle(
                        fontSize: labelFont,
                        color: Colors.green.shade800,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: spacing),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PreCookedPolentaPage()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child:Image.asset(
                            'assets11/images11/polo.jpeg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Text(
                      'Pre-cooked Polenta',
                      style: TextStyle(
                        fontSize: labelFont,
                        color: Colors.green.shade800,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Mozzarella()));
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets11/images11/mozo.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Text(
                      'Mozzarella',
                      style: TextStyle(
                        fontSize: labelFont,
                        color: Colors.green.shade800,
                      ),
                    )
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
