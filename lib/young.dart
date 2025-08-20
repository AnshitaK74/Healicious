import 'package:flutter/material.dart';

class EggFooYoung extends StatefulWidget {
  const EggFooYoung({super.key});

  @override
  State<EggFooYoung> createState() => _EggFooYoungState();
}

class _EggFooYoungState extends State<EggFooYoung> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Often deep-fried and served with rich gravy, increasing total calorie intake.",
    "Sodium content: The gravy can contain 800–1200 mg sodium, contributing to water retention and high blood pressure.",
    "Greasy texture: Excess oil can lead to indigestion, bloating, and gut discomfort in sensitive individuals.",
    "Low fiber: Minimal vegetables and lack of whole grains reduce its gut-friendliness.",
    "Inconsistent protein-to-fat ratio: Depending on how it’s made, it may have more fat than lean protein."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Egg Foo Young',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // responsive
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            // Image card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets16/images16/42.jpeg',
                  height: height * 0.28,
                  width: width * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.035),

            // Nutrient heading
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per serving',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            // Data Table
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
                      'Amount',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('300–400 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('10–15 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('12–18 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('20–25 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('800–1200 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.035),

            // Effects heading
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Egg Foo Young',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),

            // Effects list
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
