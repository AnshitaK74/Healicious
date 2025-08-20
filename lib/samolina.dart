import 'package:flutter/material.dart';

class samolina extends StatefulWidget {
  const samolina({super.key});

  @override
  State<samolina> createState() => _samolinaState();
}

class _samolinaState extends State<samolina> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Insulin Level: Leads to increased insulin level which is a major concern for women in PCOS.",
    "Weight Gain: It may promote as a fat storage in belly area which cause inflammation in PCOS.",
    "Hormonal Imbalance: Semolina raises insulin, which can trigger excess production of androgens (male hormones). This may lead to acne, irregular periods, facial hair, and hair thinning.",
    "Gut Health Disruption: Low in fiber and contribute to poor gut health.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final horizontalPadding = width * 0.04;
    final borderRadius = width * 0.025;
    final imageHeight = height * 0.25;
    final imageWidth = width * 0.45;
    final fontSizeTitle = width * 0.07;
    final fontSizeSubtitle = width * 0.05;
    final fontSizeText = width * 0.035;
    final spacingSmall = height * 0.02;
    final spacingMedium = height * 0.03;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Samolina',
          style: TextStyle(
            color: Colors.green.shade800,
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(horizontalPadding),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets16/images16/samolina.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: spacingMedium),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: horizontalPadding * 0.5),
                child: Text(
                  'Nutrients per 100 gm',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeSubtitle,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: spacingMedium),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(borderRadius * 0.6),
              ),
              child: DataTable(
                columnSpacing: width * 0.08,
                columns: [
                  DataColumn(
                    label: Text(
                      'Nutrient',
                      style: TextStyle(fontSize: fontSizeText),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount per 100gm',
                      style: TextStyle(fontSize: fontSizeText),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Energy', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('~360 kcal', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('~72 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('12.7 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('1.0 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('3.9 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: spacingMedium),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: horizontalPadding * 0.5),
                child: Text(
                  'Effect of samolina',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeSubtitle,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: spacingSmall),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding * 0.7),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: spacingSmall * 0.75),
                  child: Text(
                    impacts[index],
                    style: TextStyle(fontSize: fontSizeText),
                  ),
                );
              },
            ),
            SizedBox(height: spacingMedium),
          ],
        ),
      ),
    );
  }
}
