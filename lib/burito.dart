import 'package:flutter/material.dart';

class FrozenBurritos extends StatefulWidget {
  const FrozenBurritos({super.key});

  @override
  State<FrozenBurritos> createState() => _FrozenBurritosState();
}

class _FrozenBurritosState extends State<FrozenBurritos> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Preservatives: Additives and preservatives disrupt gut and hormonal health, worsening PCOS.",
    "Trans Fats & Saturated Fats: Common in frozen meat fillings and cheese, these fats increase inflammation and insulin resistance.",
    "Refined Carbs: White flour tortillas spike blood sugar, contributing to insulin issues and fat storage.",
    "Low in Fiber: Lack of fiber impairs digestion and hormonal detoxification, both critical in PCOS management.",
    "Sodium Overload: Excess sodium can lead to water retention, blood pressure spikes, and worsened bloating.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final imageHeight = height * 0.31;
    final imageWidth = width * 0.53;
    final cardRadius = width * 0.025;
    final paddingAll = width * 0.04;

    final titleFontSize = width * 0.075;
    final sectionFontSize = width * 0.05;
    final textFontSize = width * 0.04;
    final tableFontSize = width * 0.035;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frozen Burrito',
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(paddingAll),
        child: Column(
          children: [
            SizedBox(height: height * 0.025),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cardRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(cardRadius),
                child: Image.asset(
                  'assets7/images7/burito.webp',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 frozen burrito',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: sectionFontSize,
                  color: Colors.green.shade800,
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
                      style: TextStyle(fontSize: tableFontSize),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount',
                      style: TextStyle(fontSize: tableFontSize),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('350 kcal', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('42 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('3 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('15 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('10 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('800 mg', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Frozen Burritos',
                style: TextStyle(
                  fontSize: sectionFontSize,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.w500,
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
                      style: TextStyle(fontSize: textFontSize),
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
