import 'package:flutter/material.dart';

class calpis extends StatefulWidget {
  const calpis({super.key});

  @override
  State<calpis> createState() => _calpisState();
}

class _calpisState extends State<calpis> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Promotes Fat Storage: The sugars in Calpis Soda can increase fat storage by causing insulin spikes and if consumed in excess, it may contribute to fat accumulation around the abdomen, increasing the risk of obesity and metabolic disorders.",
    "Impacts Hunger and Fullness: Since Calpis Soda provides few nutrients and no fiber, it doesn’t help you feel full for long and this can lead to overeating in subsequent meals, increasing the chances of consuming more calories than needed.",
    "Increases Overall Caloric Intake: Frequent consumption of sugary beverages like Calpis Soda can lead to an excess intake of calories, especially when it replaces healthier options like water or unsweetened beverages and over time, this excess energy contributes to weight gain.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calpis soda',
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
                    'assets5/images5/olq.jpeg',
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
                    DataCell(Text('37 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('9.1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('9.1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0.3 g', style: TextStyle(fontSize: width * 0.035))),
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
                  'Effect of Calpis soda',
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
