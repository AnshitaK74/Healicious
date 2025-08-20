import 'package:flutter/material.dart';

class cake extends StatefulWidget {
  const cake({super.key});

  @override
  State<cake> createState() => _cakeState();
}

class _cakeState extends State<cake> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbs & Sugars:Contains white flour and sugar, which are low in fiber and quickly spike blood sugar and insulin, promoting fat storage.",
    "High in Fat (especially Saturated Fat):Made with cream cheese, butter, and eggs, it often includes 15–20g of fat, which adds to total calorie load and can contribute to visceral fat if overconsumed.",
    "High in Calories for Small Volume:A single slice may have 250–300+ kcal, and its airy texture can lead to overeating without realizing it.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cake',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // ~32 before
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.022), // ~18 before
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025), // ~10 before
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.025),
                  child: Image.asset(
                    'assets5/images5/cake.jpeg',
                    height: height * 0.31, // ~250 before
                    width: width * 0.53,   // ~200 before
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.025), // ~20 before
            Padding(
              padding: EdgeInsets.only(left: width * 0.045), // ~18 before
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 piece',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05, // ~20 before
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.037), // ~30 before
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(width * 0.015), // ~5 before
              ),
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      'Nutrient',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount per 1 piece',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('250–300 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('20–30 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('15–20 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('5–8 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('15–20 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034), // ~28 before
            Padding(
              padding: EdgeInsets.only(left: width * 0.045), // ~18 before
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Cake',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05, // ~20 before
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.015), // ~12 before
                  child: ListTile(
                    title: Text(
                      impacts[index],
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
