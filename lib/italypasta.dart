import 'package:flutter/material.dart';

class creamypasta extends StatefulWidget {
  const creamypasta({super.key});

  @override
  State<creamypasta> createState() => _creamypastaState();
}

class _creamypastaState extends State<creamypasta> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbohydrates: Most creamy pastas use white pasta, which spikes insulin and blood sugar, aggravating insulin resistance in PCOS.",
    "High Saturated Fat: Cream-based sauces are rich in saturated fats, which can contribute to systemic inflammation and hormonal imbalance.",
    "Low Fiber: Creamy pasta dishes typically lack fiber, slowing digestion and failing to support healthy gut function—critical in PCOS management.",
    "Calorie Dense: These meals are often very energy-dense, making it easy to overeat and contributing to weight gain, which worsens PCOS symptoms.",
    "Dairy Overload: Heavy cream and cheese may exacerbate acne and androgen levels in some PCOS individuals sensitive to dairy."
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
          'Creamy Pasta',
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
                    'assets10/images10/d.jpg',
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
                  'Nutrients per 1 serving',
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
                rows:  [
                  DataRow(cells: [
                    DataCell(Text('Calories' ,style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('500–700 kcal', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates' ,style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('60–75 g' ,style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('10–15 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('25–35 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: fontSubtitle * 0.9))),
                    DataCell(Text('2–4 g', style: TextStyle(fontSize: fontSubtitle * 0.9))),
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
                  'Effect of Creamy Pasta ',
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
