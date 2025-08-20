import 'package:flutter/material.dart';

class CannedOlives1 extends StatefulWidget {
  const CannedOlives1({super.key});

  @override
  State<CannedOlives1> createState() => _CannedOlives1State();
}

class _CannedOlives1State extends State<CannedOlives1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Sodium: Canned olives are often preserved in brine or salt, making them very high in sodium. Excessive sodium intake can contribute to high blood pressure, a common issue for diabetics.",
    "Possible Added Sugars: Some canned olives are flavored with added sugars or sweeteners, which can cause spikes in blood sugar levels, making them unsuitable for diabetics.",
    "Refined Oils: Some canned olives may be stored in refined oils, which can increase unhealthy fat intake. Excessive intake of unhealthy fats can worsen insulin resistance in diabetics.",
    "Low in Fiber: Olives are naturally low in fiber, which is important for controlling blood sugar. Without sufficient fiber, blood sugar spikes may occur after eating canned olives.",
    "Caloric Density: Depending on the oil used in the preservation process, canned olives can be calorie-dense, which may contribute to weight gain if consumed excessively. Weight gain can negatively impact insulin sensitivity in diabetics.",
    "Artificial Preservatives: Some canned olives may contain artificial preservatives, which are generally not ideal for people with diabetes, as they can cause inflammation and digestive issues."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Canned Olives',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075,
            color: Colors.green.shade700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            SizedBox(height: height * 0.025),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets12/images12/p.jpeg',
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.034),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1/4 cup (average)',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                ),
              ),
            ),
            SizedBox(height: height * 0.037),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(label: Text('Nutrient', style: TextStyle(fontSize: width * 0.04))),
                  DataColumn(label: Text('Amount', style: TextStyle(fontSize: width * 0.04))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('40–60 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('2–5 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0–1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1–2 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0.5–1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('3–5 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Canned Olives on Diabetes',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
