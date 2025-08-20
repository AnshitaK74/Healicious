import 'package:flutter/material.dart';

class Chorizo extends StatefulWidget {
  const Chorizo({super.key});

  @override
  State<Chorizo> createState() => _ChorizoState();
}

class _ChorizoState extends State<Chorizo> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Saturated Fat: Increases insulin resistance and may worsen hormonal imbalances in PCOS.",
    "Inflammatory Preservatives: Nitrates and additives promote systemic inflammation linked to PCOS symptoms.",
    "Hormone-Disrupting Ingredients: Processed meats may contain residues that interfere with endocrine function.",
    "Excess Sodium: Promotes bloating, water retention, and can worsen high blood pressure risks in PCOS.",
    "Low Nutritional Value: Despite being high in calories, chorizo lacks fiber and beneficial nutrients needed for PCOS support.",
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
          'Chorizo',
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
                  'assets7/images7/chorizo.jpeg',
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
                'Nutrients per 100g cooked chorizo',
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
                    DataCell(Text('330 kcal', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('2 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('28 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('14 g', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: tableFontSize))),
                    DataCell(Text('850 mg', style: TextStyle(fontSize: tableFontSize))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Chorizo',
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
