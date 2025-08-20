import 'package:flutter/material.dart';
import 'package:recepie_app/deepfriedjapan.dart';
import 'package:recepie_app/fridaypcosjapan.dart';
import 'package:recepie_app/highgijapan.dart';
import 'package:recepie_app/mondaypcosjapan.dart';
import 'package:recepie_app/saturdayjapan.dart';
import 'package:recepie_app/sodiumjapan.dart';
import 'package:recepie_app/sugaryjapan.dart';
import 'package:recepie_app/thursdaypcosjapan.dart';
import 'package:recepie_app/tuesdaypcosjapan.dart';
import 'package:recepie_app/wednesdaypcosjapan.dart';

class pcosavoid2 extends StatefulWidget {
  const pcosavoid2({super.key});

  @override
  State<pcosavoid2> createState() => _pcosavoid2State();
}

class _pcosavoid2State extends State<pcosavoid2> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('PCOS',
            style: TextStyle(
                fontSize: width * 0.07,
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.06),
              child: Text('Food categories To Avoid',
                  style: TextStyle(
                      fontSize: width * 0.05,
                      color: Colors.green.shade800)),
            ),
          ),
          SizedBox(height: height * 0.015),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard('assets2/images2/img_17.png', 'High Gi', highgijapan(), width, height),
                buildCard('assets5/images5/weed.jpeg', 'Deep Fried Food', deepfriedjapan(), width, height),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard('assets5/images5/sweet.jpg', 'Sugary Food', sugaryjapan(), width, height),
                buildCard('assets2/images2/images-12.jpeg', 'High Sodium', sodiumjapan(), width, height),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Text('DIET PLAN',
              style: TextStyle(
                  fontSize: width * 0.07,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold)),
          buildDayRow([
            ['assets13/images13/a.webp', 'Monday', mondaypcosjapan()],
            ['assets13/images13/b.jpg', 'Tuesday', tuesdaypcosjapan()],
          ], width, height),
          buildDayRow([
            ['assets13/images13/c.webp', 'Wednesday', wednesdaypcosjapan()],
            ['assets13/images13/d.jpeg', 'Thursday', thursdaypcosjapan()],
          ], width, height),
          buildDayRow([
            ['assets13/images13/e.jpeg', 'Friday', fridaypcosjapan()],
            ['assets13/images13/f.webp', 'Saturday', saturdayjapan()],
          ], width, height),
        ]),
      ),
    );
  }

  Widget buildCard(String imagePath, String label, Widget page, double width, double height) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          },
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(width * 0.025),
              child: Image.asset(
                imagePath,
                height: height * 0.28,
                width: width * 0.35,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.01),
        Text(label,
            style: TextStyle(
                color: Colors.green.shade800, fontSize: width * 0.04))
      ],
    );
  }

  Widget buildDayRow(List<List<dynamic>> days, double width, double height) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: days.map((day) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => day[2]));
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.025)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.025),
                    child: Image.asset(
                      day[0],
                      height: height * 0.28,
                      width: width * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(day[1],
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: width * 0.04))
            ],
          );
        }).toList(),
      ),
    );
  }
}
