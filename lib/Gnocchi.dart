import 'package:flutter/material.dart';

class gnocchi extends StatefulWidget {
  const gnocchi({super.key});

  @override
  State<gnocchi> createState() => _gnocchiState();
}

class _gnocchiState extends State<gnocchi> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbohydrates: Gnocchi is often made with white potatoes and refined flour, which leads to a high glycemic index and causes blood sugar spikes, worsening insulin resistance in PCOS.",
    "Low Fiber: The refined flour and potato mixture lacks fiber, leading to slower digestion and poor gut health, which is crucial in managing PCOS symptoms.",
    "High Glycemic Load: Gnocchi contributes to a high glycemic load, which can exacerbate blood sugar imbalances, contributing to weight gain and hormonal disturbances in PCOS.",
    "High Calorie Density: Gnocchi is calorie-dense but lacks essential nutrients, making it easy to overconsume and potentially lead to weight gain, which is a concern for women with PCOS.",
    "Saturated Fats: If prepared with creamy sauces or cheese, gnocchi can contain high levels of saturated fats, which can increase inflammation and worsen PCOS symptoms."
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final width = media.width;
    final height = media.height;
    // Responsive values
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
            'Gnocchi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontTitle,
              color: Colors.green.shade800,
            ),
          ),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: topPadding),
                child: Card(
                  elevation: elevation,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(borderRadius),
                    child: Image.asset(
                      'assets10/images10/a.jpg',
                      height: imageHeight,
                      width: imageWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacingSmall),
              Padding(
                padding: EdgeInsets.only(left: paddingSide),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Nutrients per 1 bowl',
                      style: TextStyle(fontSize: fontSubtitle * 0.9)
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, width: tableBorderWidth),
                  borderRadius: BorderRadius.circular(tableBorderRadius),
                ),
                child: DataTable(columns: [
                  DataColumn(label: Text('Nutrient',
                      style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  DataColumn(label: Text('Amount',
                      style: TextStyle(fontSize: fontSubtitle * 0.9))),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('300–400 kcal', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('50–60 g', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('6–8 g', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('12–15 g', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('1–2 g', style: TextStyle(
                        fontSize: fontSubtitle * 0.9))),
                  ]),
                ]),
              ),
              SizedBox(height: spacingLarge),
              Padding(
                padding: EdgeInsets.only(left: paddingSide),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Gnocchi ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: fontSubtitle,
                        color: Colors.green.shade800),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(paddingSide),
                itemCount: impacts.length,
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
              ),
            ],
          ),
        ),
      );
    }
  }

