import 'package:flutter/material.dart';

class Mochi11 extends StatefulWidget {
  const Mochi11({super.key});

  @override
  State<Mochi11> createState() => _Mochi11State();
}

class _Mochi11State extends State<Mochi11> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Sticky Carbs: Mochi is made from glutinous rice, which is quickly digested and leads to blood sugar spikes.",
    "High Glycemic Load: Despite its small size, mochi packs a high glycemic load, making it harmful for diabetics.",
    "Low Fiber: It lacks fiber, slowing glucose absorption and increasing insulin spikes.",
    "Hidden Sugars: Many versions include added sweeteners or fillings that raise total sugar content.",
    "Risk of Overeating: Small portion size with high calories makes it easy to overconsume unknowingly."
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mochi',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // responsive
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.018),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.025), // responsive radius
                  ),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets5/images5/mochi.jpeg',
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.55,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 piece (45g)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius:
                  BorderRadius.circular(screenWidth * 0.013),
                ),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('100–120 kcal',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('22–25 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('0–1 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('0.2–1 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('1–2 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('10–14 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Mochi',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(screenWidth * 0.025),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(bottom: screenHeight * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style:
                        TextStyle(fontSize: screenWidth * 0.04),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
