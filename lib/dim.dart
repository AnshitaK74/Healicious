import 'package:flutter/material.dart';

class DimSumInfo1 extends StatefulWidget {
  const DimSumInfo1({super.key});

  @override
  State<DimSumInfo1> createState() => _DimSumInfo1State();
}

class _DimSumInfo1State extends State<DimSumInfo1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Often Refined Carbs: Most dim sum wrappers are made from white flour, which can spike blood sugar.",
    "High in Sodium: Many dim sum items (like soy sauce dumplings) are salty — too much salt can affect hormone balance.",
    "Hidden Fats: Steamed or not, many fillings are oily or fatty, which increases inflammation.",
    "Processed Fillings: Sausages, meat pastes, or MSG-laden fillings can disrupt gut and hormone health.",
    "Easy to Overeat: Small portions add up fast — high calorie without feeling full = weight gain risk.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dim Sum',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: width * 0.07,
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
                  'assets16/images16/x.jpeg',
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 3 pieces',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.045,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.025),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.05,
                columns: [
                  DataColumn(
                      label: Text('Nutrient', style: TextStyle(fontSize: width * 0.035))),
                  DataColumn(
                      label: Text('Value', style: TextStyle(fontSize: width * 0.035))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('150–180 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('18–22 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('5–7 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('5–8 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('300–500 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Dim Sum',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
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
