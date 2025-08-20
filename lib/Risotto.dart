import 'package:flutter/material.dart';

class RisottoInfoi extends StatefulWidget {
  const RisottoInfoi({super.key});

  @override
  State<RisottoInfoi> createState() => _RisottoInfoiState();
}

class _RisottoInfoiState extends State<RisottoInfoi> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Risotto is calorie-dense, especially when made with butter, cheese, and creamy sauces. Overeating can contribute to weight gain and obesity.",
    "High in refined carbs: Traditional risotto is made from white rice, which is high in refined carbohydrates. This can cause spikes in blood sugar and contribute to weight gain.",
    "High in fat: Many risotto recipes use butter, heavy cream, or cheese, which adds unhealthy fats that can contribute to obesity and heart disease if consumed in excess.",
    "Low in fiber: While rice-based, risotto lacks the fiber that whole grains provide. A low fiber intake can lead to overeating as it doesn't promote satiety.",
    "High sodium content: Some risotto dishes, especially store-bought or restaurant versions, can be high in sodium, leading to water retention and making it harder to maintain a healthy weight.",
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final width = media.width;
    final height = media.height;

    // Responsive dimensions
    final fontTitle = width * 0.08;
    final fontSubtitle = width * 0.05;
    final paddingSide = width * 0.045;
    final topPadding = height * 0.02;
    final spacingLarge = height * 0.035;
    final spacingSmall = height * 0.025;
    final imageHeight = height * 0.3;
    final imageWidth = width * 0.5;
    final borderRadius = width * 0.025;
    final elevation = width * 0.015;
    final tableBorderRadius = width * 0.015;
    final tableBorderWidth = width * 0.003;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Risotto',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontTitle,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: Column(children: [
            Card(
              elevation: elevation,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets11/images11/i.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: spacingSmall),
            Padding(
              padding: EdgeInsets.only(left: paddingSide),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 serving',
                  style: TextStyle(fontSize: fontSubtitle, color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: spacingLarge),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: tableBorderWidth),
                borderRadius: BorderRadius.circular(tableBorderRadius),
              ),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Nutrients', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  DataColumn(label: Text('Values',  style: TextStyle(fontSize: fontSubtitle * 0.9))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('300–450 kcal', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('40–60 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('8–12 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('500–800 mg', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('15–25 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: spacingLarge),
            Padding(
              padding: EdgeInsets.only(left: paddingSide),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Risotto',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: fontSubtitle,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              padding: EdgeInsets.symmetric(horizontal: paddingSide, vertical: spacingSmall),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: ListTile(
                    title: Text(
                      impacts[index],
                      style: TextStyle(fontSize: fontSubtitle * 0.85),
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
