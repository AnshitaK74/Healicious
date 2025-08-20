import 'package:flutter/material.dart';

class WhiteRice extends StatefulWidget {
  const WhiteRice({super.key});

  @override
  State<WhiteRice> createState() => _WhiteRiceState();
}

class _WhiteRiceState extends State<WhiteRice> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High GI: It spikes blood sugar and insulin.",
    "Promotes Inflammation: High-carb, low-fiber diets (often including white rice) can contribute to chronic low-grade inflammation, which is linked to worsening PCOS symptoms.",
    "Low Nutrient Density: Rice is low in nutrition which can affect menstrual regularity.",
    "Weight gain: Weight gain, especially around the abdomen, can further exacerbate PCOS symptoms."
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
          'White Rice',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(horizontalPadding),
        child: Column(
          children: [
            SizedBox(height: spacingSmall),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets2/images2/img_17.png',
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
                  'Nutrients per 100gm',
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
                      'Nutrients',
                      style: TextStyle(fontSize: fontSizeText),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Values',
                      style: TextStyle(fontSize: fontSizeText),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('130 kcal', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('28.2 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('2.7 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('0.3 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('1.8 g', style: TextStyle(fontSize: fontSizeText))),
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
                  'Effect of white Rice',
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
              physics: const NeverScrollableScrollPhysics(),
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
