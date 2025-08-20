import 'package:flutter/material.dart';

class cahan extends StatefulWidget {
  const cahan({super.key});

  @override
  State<cahan> createState() => _cahanState();
}

class _cahanState extends State<cahan> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Caloric Content: Chahan can be calorie-dense, especially if large portions are consumed or if it's made with excessive amounts of oil, meat, or rice and overeating can easily lead to consuming more calories than needed, potentially contributing to weight gain.",
    "Refined Carbohydrates: Traditional chahan is often made with white rice, which is a refined carbohydrate and consuming refined carbs in excess can lead to rapid spikes in blood sugar, increasing the risk of weight gain and long-term conditions like type 2 diabetes.",
    "High Fat Content: If chahan is cooked with too much oil or butter, it can become high in unhealthy fats and regular consumption of these fats, especially if the dish contains fatty meats or excessive oil, can contribute to unhealthy weight gain and heart disease.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chahan',
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
                    'assets5/images5/cahan.jpeg',
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
                  'Nutrients per 100 gm',
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
                      'Amount per 100 gm',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('250–350 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('35–45 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('3–6 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('7–12 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('7–12 g', style: TextStyle(fontSize: width * 0.035))),
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
                  'Effect of Chahan',
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
