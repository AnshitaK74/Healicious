import 'package:flutter/material.dart';

class yakitori extends StatefulWidget {
  const yakitori({super.key});

  @override
  State<yakitori> createState() => _yakitoriState();
}

class _yakitoriState extends State<yakitori> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Deep-Fried in Oil: Absorbs a high amount of oil during frying and fatty foods slow digestion and can trigger bloating, gas, or acid reflux.",
    "Refined Wheat Flour Batter: Made with white flour, which contains gluten and low fiber and gluten can irritate the gut in sensitive individuals (IBS, celiac, gluten intolerance).",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yakitori",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075,
            color: Colors.green.shade800,
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
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets16/images16/tori.jpeg',
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.015),
                child: Text(
                  'Nutrients per 1 piece',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                  ),
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
                  DataColumn(
                    label: Text(
                      'Nutrient',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount per 1 piece',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calorie', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("70–90 kcal", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("1–3 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('4–6 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('200–300 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('7–9 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.015),
                child: Text(
                  'Effects of Yakitori',
                  style: TextStyle(
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.w500,
                  ),
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
