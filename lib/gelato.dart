import 'package:flutter/material.dart';

class Gelatoi extends StatefulWidget {
  const Gelatoi({super.key});

  @override
  State<Gelatoi> createState() => _GelatoiState();
}

class _GelatoiState extends State<Gelatoi> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in sugars: Gelato typically contains significant amounts of sugar, which can contribute to fat storage and blood sugar spikes.",
    "Energy-dense: Even a small cup may contain 150–250 calories, which adds up quickly if consumed regularly.",
    "Low in fiber: Gelato offers minimal fiber, leading to less satiety and a higher risk of overeating.",
    "High glycemic index: The rapid absorption of sugars can lead to insulin spikes, making it unsuitable for people with insulin resistance or obesity.",
    "Often over-consumed: Its creamy, smooth texture and sweet taste encourage large portions or frequent indulgence.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gelato',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade700,
            fontSize: width * 0.075, // ✅ Responsive font size
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04), // ✅ Responsive padding
        child: Column(
          children: [
            SizedBox(height: height * 0.025),

            // 🍨 Image Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets11/images11/u.webp', // Replace with your gelato image path
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: height * 0.034),

            // 📌 Nutrients Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 100 g',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                ),
              ),
            ),

            SizedBox(height: height * 0.02),

            // 📊 Nutrients Table
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
                      'Values',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('160–220 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('22–28 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('3–4 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('30–50 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('5–9 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),

            SizedBox(height: height * 0.034),

            // 📌 Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Gelato',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                ),
              ),
            ),

            SizedBox(height: height * 0.015),

            // 📋 Effects List
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
                      style: TextStyle(fontSize: width * 0.04), // ✅ Responsive
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
