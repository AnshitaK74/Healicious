import 'package:flutter/material.dart';
import 'package:recepie_app/Gnocchi.dart';
import 'package:recepie_app/Refined%20Pizza.dart';
import 'package:recepie_app/White%20Risotto.dart';
import 'package:recepie_app/italypasta.dart';

class highcarbitalian extends StatefulWidget {
  const highcarbitalian({super.key});

  @override
  State<highcarbitalian> createState() => _highcarbitalianState();
}

class _highcarbitalianState extends State<highcarbitalian> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final height = media.height;
    final width = media.width;

    // Scaling factors
    final padding = width * 0.05;
    final fontTitle = width * 0.08;
    final fontLabel = width * 0.04;
    final imageHeight = height * 0.25;
    final imageWidth = width * 0.4;
    final cornerRadius = width * 0.025;
    final elevationValue = width * 0.01;
    final spacing = height * 0.03;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'High Carb',
          style: TextStyle(
            fontSize: fontTitle,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food To Avoid',
                  style: TextStyle(
                    fontSize: fontLabel,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => creamypasta()));
                      },
                      child: Card(
                        elevation: elevationValue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cornerRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cornerRadius),
                          child: Image.asset(
                            'assets10/images10/d.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacing * 0.3),
                    Text(
                      'Creamy Pasta',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: fontLabel,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => refinedpizza()));
                      },
                      child: Card(
                        elevation: elevationValue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cornerRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cornerRadius),
                          child: Image.asset(
                            'assets10/images10/c.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacing * 0.3),
                    Text(
                      'Refined Pizza',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: fontLabel,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: spacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => whiterisotto()));
                      },
                      child: Card(
                        elevation: elevationValue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cornerRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cornerRadius),
                          child: Image.asset(
                            'assets10/images10/b.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacing * 0.3),
                    Text(
                      'White Risotto',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: fontLabel,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => gnocchi()));
                      },
                      child: Card(
                        elevation: elevationValue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(cornerRadius)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(cornerRadius),
                          child: Image.asset(
                            'assets10/images10/a.jpg',
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacing * 0.3),
                    Text(
                      'Gnocchi',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: fontLabel,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
