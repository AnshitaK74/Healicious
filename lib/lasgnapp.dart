import 'package:flutter/material.dart';

class LasagnaInfoi extends StatefulWidget {
  const LasagnaInfoi({super.key});

  @override
  State<LasagnaInfoi> createState() => _LasagnaInfoiState();
}

class _LasagnaInfoiState extends State<LasagnaInfoi> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Lasagna is calorie-dense, especially with layers of pasta, cheese, and meat. Overeating can easily contribute to weight gain and obesity.",
    "High in refined carbs: Traditional lasagna is made from refined pasta, which can cause spikes in blood sugar levels, leading to fat storage and weight gain.",
    "High in fat: Layers of cheese and fatty meats (such as ground beef or sausage) make lasagna rich in unhealthy fats, which may lead to obesity and cardiovascular problems.",
    "Low in fiber: Traditional lasagna made with white pasta lacks fiber, which helps in digestion and satiety. A lack of fiber can encourage overeating and contribute to obesity.",
    "High sodium content: Many lasagna recipes, especially store-bought ones, are high in sodium, which can lead to water retention and bloating, making it harder to manage body weight.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lasagna',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // ✅ MediaQuery font size
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

            // 🍲 Image Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets11/images11/h.jpg',
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
                    DataCell(Text('400–600 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('40–50 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('20–30 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('700–1000 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('25–35 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),

            SizedBox(height: height * 0.034),

            // 📌 Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Lasagna',
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
