import 'package:flutter/material.dart';

class Carnitas extends StatefulWidget {
  const Carnitas({super.key});

  @override
  State<Carnitas> createState() => _CarnitasState();
}

class _CarnitasState extends State<Carnitas> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Saturated Fat: Traditional pork cuts used in carnitas are high in saturated fat, worsening insulin resistance.",
    "Fried in Lard: Cooking in lard increases unhealthy fat intake, promoting inflammation and weight gain.",
    "No Fiber: Meat-only dishes lack fiber, impairing digestion and blood sugar control in PCOS.",
    "Calorie Dense: Rich in calories, leading to fat accumulation and hormonal disruption if consumed frequently.",
    "Promotes Inflammation: High fat content contributes to systemic inflammation, aggravating PCOS symptoms like fatigue and acne.",
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
          'Carnitas',
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
                  'assets7/images7/cc.jpg',
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
                'Nutrients per 100g cooked carnitas',
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
                      'Amount per 100g',
                      style: TextStyle(fontSize: tableFontSize),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('290 kcal', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('22 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('22 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('600 mg', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Carnitas',
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
