import 'package:flutter/material.dart';

class RefinedFlourPCOS extends StatefulWidget {
  const RefinedFlourPCOS({super.key});

  @override
  State<RefinedFlourPCOS> createState() => _RefinedFlourPCOSState();
}

class _RefinedFlourPCOSState extends State<RefinedFlourPCOS> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Spikes Blood Sugar: Refined flour causes rapid blood sugar spikes, worsening insulin resistance in PCOS.",
    "Promotes Weight Gain: Low in fiber and high in carbs, it leads to overeating and belly fat.",
    "Triggers Hormonal Imbalance: Increases insulin levels, which can raise androgen (testosterone) levels in women with PCOS.",
    "Lacks Nutrients: Refined flour is stripped of essential nutrients like B vitamins and fiber, needed for hormone regulation.",
    "Inflammatory: Highly processed carbs promote chronic inflammation, aggravating PCOS symptoms like acne and fatigue.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final horizontalPadding = width * 0.04;
    final borderRadius = width * 0.025;
    final imageHeight = height * 0.25;
    final imageWidth = width * 0.4;
    final fontSizeTitle = width * 0.07;
    final fontSizeSubtitle = width * 0.05;
    final fontSizeText = width * 0.035;
    final spacingSmall = height * 0.02;
    final spacingMedium = height * 0.03;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Refined Flour",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle,
            color: Colors.green.shade700,
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
                  'assets2/images2/img_16.png', // Update path if needed
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
                    color: Colors.green.shade700,
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
                      'Amount per 100 gm',
                      style: TextStyle(fontSize: fontSizeText),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text("364 kcal", style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text("76.3 g", style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('10.3 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('2.7 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('1.0 g', style: TextStyle(fontSize: fontSizeText))),
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
                  'Effects of Refined Flour',
                  style: TextStyle(
                    fontSize: fontSizeSubtitle,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(horizontalPadding * 0.7),
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
