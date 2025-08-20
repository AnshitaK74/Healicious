import 'package:flutter/material.dart';

class PreCookedPolentaPage extends StatefulWidget {
  const PreCookedPolentaPage({super.key});

  @override
  State<PreCookedPolentaPage> createState() => _PreCookedPolentaPageState();
}

class _PreCookedPolentaPageState extends State<PreCookedPolentaPage> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High glycemic index: Can cause blood sugar spikes, leading to weight gain over time.",
    "Refined cornmeal: Low in fiber, which can slow digestion and contribute to overeating.",
    "High in simple carbs: May lead to increased fat storage, especially when not balanced with protein.",
    "Added preservatives: Often included in pre-cooked varieties, which may negatively affect metabolism.",
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    final titleFontSize = screenWidth * 0.065; // AppBar text
    final headingFontSize = screenWidth * 0.05; // Section headings
    final bodyFontSize = screenWidth * 0.042; // Table + list text
    final imageHeight = screenHeight * 0.25;
    final imageWidth = screenWidth * 0.5;
    final cardRadius = screenWidth * 0.03;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pre-Cooked Polenta',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: titleFontSize,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cardRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(cardRadius),
                child: Image.asset(
                  'assets11/images11/polo.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.035),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 serving',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: headingFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(screenWidth * 0.02),
              ),
              child: DataTable(
                columnSpacing: screenWidth * 0.08,
                columns: [
                  DataColumn(
                      label: Text('Nutrients',
                          style: TextStyle(fontSize: bodyFontSize))),
                  DataColumn(
                      label: Text('Values',
                          style: TextStyle(fontSize: bodyFontSize))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories',
                        style: TextStyle(fontSize: bodyFontSize))),
                    DataCell(Text('150–180 kcal',
                        style: TextStyle(fontSize: bodyFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: bodyFontSize))),
                    DataCell(Text('30–35 g',
                        style: TextStyle(fontSize: bodyFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: bodyFontSize))),
                    DataCell(Text('3–4 g',
                        style: TextStyle(fontSize: bodyFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium',
                        style: TextStyle(fontSize: bodyFontSize))),
                    DataCell(Text('200–250 mg',
                        style: TextStyle(fontSize: bodyFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: bodyFontSize))),
                    DataCell(Text('1–2 g',
                        style: TextStyle(fontSize: bodyFontSize))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.035),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Pre-Cooked Polenta',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: headingFontSize,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                  child: ListTile(
                    title: Text(
                      impacts[index],
                      style: TextStyle(fontSize: bodyFontSize),
                    ),
                  ),
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}
