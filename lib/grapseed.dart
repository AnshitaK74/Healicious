import 'package:flutter/material.dart';

class GrapeseedOiil extends StatefulWidget {
  const GrapeseedOiil({super.key});

  @override
  State<GrapeseedOiil> createState() => _GrapeseedOiilState();
}

class _GrapeseedOiilState extends State<GrapeseedOiil> {
  final List<String> impacts = [
    "High in calories: Grapeseed oil is energy-dense. Just one tablespoon can contain over 120 calories, which may lead to weight gain if used excessively.",
    "High in omega-6 fatty acids: Excessive omega-6 intake, common in grapeseed oil, may promote inflammation and fat accumulation when not balanced with omega-3s.",
    "Low in nutrients: Compared to extra virgin olive oil, grapeseed oil offers minimal antioxidants or micronutrients, which are important in obesity management.",
    "Often used in frying: Grapeseed oil’s high smoke point makes it common for frying, increasing the overall fat and calorie content of meals.",
    "Processed nature: Grapeseed oil is often heavily refined, which can lead to less healthy fat profiles compared to cold-pressed oils.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grapeseed Oil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // ✅ Responsive font size
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(width * 0.04), // ✅ Responsive padding
        child: Column(
          children: [
            SizedBox(height: height * 0.025),

            // 🫒 Image Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets11/images11/q.jpeg',
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
                'Nutrients per 1 tablespoon',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),

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
                      'Amount per 1 tbsp',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('120–125 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('14 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),

            SizedBox(height: height * 0.034),

            // 📌 Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Grapeseed Oil',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
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
