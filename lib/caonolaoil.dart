import 'package:flutter/material.dart';

class canolaOil extends StatefulWidget {
  const canolaOil({super.key});

  @override
  State<canolaOil> createState() => _canolaOilState();
}

class _canolaOilState extends State<canolaOil> {
  final List<String> impacts = [
    "Omega-6 imbalance:\nExcessive omega-6 fatty acids in canola oil may promote inflammation, which is associated with worsened PCOS symptoms like insulin resistance.",
    "Hormonal disruption:\nRefined oils like canola may interfere with hormonal balance, potentially aggravating symptoms such as acne and irregular periods.",
    "Insulin sensitivity:\nSome studies suggest that frequent consumption of processed oils may reduce insulin sensitivity, a core issue in PCOS."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Canola Oil',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
              fontSize: width * 0.075),
        ),
      ),
      body: SingleChildScrollView(
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
                  'assets10/images10/e.webp', // replace with actual image path
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
                'Nutrients per 1 tbsp',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800),
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(
                      label: Text('Nutrient',
                          style: TextStyle(fontSize: width * 0.04))),
                  DataColumn(
                      label: Text('Amount per 1 tbsp',
                          style: TextStyle(fontSize: width * 0.04))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('120 kcal', style: TextStyle(fontSize: width * 0.035))),
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
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('14 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Saturated Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Canola Oil',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800),
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
            )
          ],
        ),
      ),
    );
  }
}
