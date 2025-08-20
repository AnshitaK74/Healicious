import 'package:flutter/material.dart';

class ramen extends StatefulWidget {
  const ramen({super.key});

  @override
  State<ramen> createState() => _ramenState();
}

class _ramenState extends State<ramen> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbs: Ramen noodles are made from refined wheat flour, which spikes insulin levels and worsens insulin resistance, a major concern in PCOS.",
    "High Sodium Content: One serving of ramen can contain over 800–1000 mg of sodium, leading to water retention, bloating, and increased blood pressure.",
    "Low Nutrient Density: Ramen is low in fiber, vitamins, and minerals, and lacks the nutrients needed for hormone balance and metabolic support.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ramen Dish",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // same style as takoyaki2
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(height: height * 0.025),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025), // same as takoyaki2
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets5/images5/japan.jpg',
                  height: height * 0.28, // changed to MediaQuery like takoyaki2
                  width: width * 0.4,    // changed to MediaQuery like takoyaki2
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.025),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.05, top: height * 0.015),
                child: Text(
                  'Nutrients per 1 bowl',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(
                    label: Text(
                      'Nutrient',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount per 1 piece:',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calorie', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("400-500 kcal", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("50-60 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('14-20 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('800-1000 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1-2 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('8-12 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.025),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.02, left: width * 0.05),
                child: Text(
                  'Effects of Ramen',
                  style: TextStyle(
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(width * 0.03),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.015),
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
