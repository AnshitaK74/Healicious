import 'package:flutter/material.dart';

class mexicanEnergyDrink extends StatefulWidget {
  const mexicanEnergyDrink({super.key});

  @override
  State<mexicanEnergyDrink> createState() => _mexicanEnergyDrinkState();
}

class _mexicanEnergyDrinkState extends State<mexicanEnergyDrink> {
  final ScrollController _scrollController = ScrollController();

  final List<String> gutImpacts = [
    "Artificial Sweeteners Disrupt Gut Flora: Ingredients like sucralose or acesulfame potassium reduce beneficial bacteria.",
    "Caffeine Overload: Excess caffeine may increase gut permeability and cause inflammation (leaky gut).",
    "Acidic Nature: High acidity can irritate the digestive tract lining and impact gut health over time.",
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery values
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final cardHeight = height * 0.31;
    final cardWidth = width * 0.53;
    final cardRadius = width * 0.025;
    final titleFontSize = width * 0.075;
    final subtitleFontSize = width * 0.05;
    final textFontSize = width * 0.04;
    final paddingSize = width * 0.04;
    final rowSpacing = height * 0.025;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Energy Drink",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: titleFontSize,
            color: Colors.green.shade700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          children: [
            SizedBox(height: rowSpacing),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cardRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(cardRadius),
                child: Image.asset(
                  'assets8/images8/offo.jpeg',
                  height: cardHeight,
                  width: cardWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: rowSpacing),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 can',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: subtitleFontSize,
                  color: Colors.green.shade700,
                ),
              ),
            ),
            SizedBox(height: rowSpacing),
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
                      style: TextStyle(fontSize: textFontSize),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount per can',
                      style: TextStyle(fontSize: textFontSize),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calorie', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text("100–160 kcal", style: TextStyle(fontSize: textFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text("25–40 g", style: TextStyle(fontSize: textFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: textFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: textFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text('180–250 mg', style: TextStyle(fontSize: textFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Caffeine', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text('80–160 mg', style: TextStyle(fontSize: textFontSize))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: rowSpacing),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Energy Drinks',
                style: TextStyle(
                  fontSize: subtitleFontSize,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: gutImpacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.015),
                  child: ListTile(
                    title: Text(
                      gutImpacts[index],
                      style: TextStyle(fontSize: textFontSize),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
