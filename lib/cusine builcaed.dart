import 'package:flutter/material.dart';
import 'package:recepie_app/day1%20indian.dart';
import 'package:recepie_app/day1%20italy.dart';
import 'package:recepie_app/day1china.dart';
import 'package:recepie_app/day1japan.dart';
import 'package:recepie_app/day1mexico.dart';
import 'package:recepie_app/day1thai.dart';

class CuisineGrid extends StatelessWidget {
  const CuisineGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final padding = screenSize.width * 0.04;
    final borderRadius = screenSize.width * 0.04;
    final imageHeight = screenSize.height * 0.17;
    final fontSize = screenSize.width * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cuisines',
          style: TextStyle(
            color: Colors.green.shade800,
            fontSize: fontSize + 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      backgroundColor: const Color(0xFFFCF8F3),
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: padding,
          crossAxisSpacing: padding * 0.8,
          childAspectRatio: 0.8,
          children: [
            // Japanese
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const day1japan()));
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(borderRadius)),
                      child: Image.asset(
                        'assets17/images17/z.jpeg',
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: imageHeight * 0.1),
                    Center(
                      child: Text(
                        'Japanese',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Indian
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const day1indian()));
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(borderRadius)),
                      child: Image.asset(
                        'assets17/images17/y.jpeg',
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: imageHeight * 0.1),
                    Center(
                      child: Text(
                        'Indian',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Thai
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const day1thai()));
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(borderRadius)),
                      child: Image.asset(
                        'assets17/images17/thai.jpeg',
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: imageHeight * 0.1),
                    Center(
                      child: Text(
                        'Thai',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Chinese
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const day1chinese()));
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(borderRadius)),
                      child: Image.asset(
                        'assets17/images17/img.png',
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: imageHeight * 0.1),
                    Center(
                      child: Text(
                        'Chinese',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Mexican
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const day1mexico()));
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(borderRadius)),
                      child: Image.asset(
                        'assets17/images17/m.jpeg',
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: imageHeight * 0.1),
                    Center(
                      child: Text(
                        'Mexican',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Italian
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const day1italy()));
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(borderRadius)),
                      child: Image.asset(
                        'assets17/images17/p.jpeg',
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: imageHeight * 0.1),
                    Center(
                      child: Text(
                        'Italian',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
