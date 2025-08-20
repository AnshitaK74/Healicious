import 'package:flutter/material.dart';

class refinedpizza extends StatefulWidget {
  const refinedpizza({super.key});

  @override
  State<refinedpizza> createState() => _refinedpizzaState();
}

class _refinedpizzaState extends State<refinedpizza> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbohydrates: Refined pizza crust is made from white flour, which causes rapid spikes in blood sugar and insulin, exacerbating insulin resistance in PCOS.",
    "High Glycemic Index: The combination of refined flour and simple carbs leads to a high glycemic load, contributing to hormonal imbalance.",
    "Low in Nutrients: Most commercial pizzas lack the necessary fiber, vitamins, and minerals needed for balanced nutrition, especially for those with PCOS.",
    "Processed Meats: Many pizzas use processed meats like pepperoni or sausage, which are high in unhealthy fats and preservatives that contribute to inflammation.",
    "Saturated Fats: The cheese on refined pizza is rich in saturated fats, which can worsen hormonal issues and lead to inflammation, affecting PCOS symptoms."
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
          'Refined Pizza',
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
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Image.asset(
                    'assets10/images10/c.jpg',
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
                  'Nutrients per 1 slice',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: fontSubtitle,
                    color: Colors.green.shade800,
                  ),
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
                  DataColumn(
                    label: Text(
                      'Nutrient',
                      style: TextStyle(fontSize: fontSubtitle * 0.9),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount',
                      style: TextStyle(fontSize: fontSubtitle * 0.9),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('250–300 kcal per slice', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('30–35 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('10–12 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('10–15 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('1–2 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
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
                  'Effect of Refined Pizza ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: fontSubtitle,
                    color: Colors.green.shade800,
                  ),
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
