import 'package:flutter/material.dart';

class PastaInfo extends StatefulWidget {
  const PastaInfo({super.key});

  @override
  State<PastaInfo> createState() => _PastaInfoState();
}

class _PastaInfoState extends State<PastaInfo> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Pasta dishes, especially when topped with rich sauces like Alfredo or Bolognese, can be very calorie-dense. Overeating can contribute to weight gain and increase the risk of obesity.",
    "High in refined carbs: Traditional pasta is made from refined wheat flour, which can cause blood sugar spikes and contribute to fat storage when consumed in excess.",
    "Low in fiber: Many pasta dishes lack fiber, especially if made from refined flour, which can lead to overeating and poor digestion, making it harder to manage body weight.",
    "High in fat: Cream-based pasta sauces or those with cheese and fatty meats add unhealthy fats, which contribute to excessive calorie intake and can lead to obesity.",
    "High sodium content: Many pasta dishes, especially those from fast food restaurants or pre-packaged versions, are high in sodium, which can lead to water retention and bloating.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pasta',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // ✅ Responsive font size
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04), // ✅ Responsive padding
        child: Column(
          children: [
            SizedBox(height: height * 0.025),

            // 🍝 Image Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets11/images11/g.jpeg',
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
                'Nutrients per 1 serving',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.037),

            // 📊 Nutrients Table
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
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
                      'Amount per serving',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('350–450 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('50–60 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('12–20 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('600–900 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('15–25 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),

            SizedBox(height: height * 0.034),

            // 📌 Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Pasta',
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.w500,
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
