import 'package:flutter/material.dart';

class mexicanCola extends StatefulWidget {
  const mexicanCola({super.key});

  @override
  State<mexicanCola> createState() => _mexicanColaState();
}

class _mexicanColaState extends State<mexicanCola> {
  final ScrollController _scrollController = ScrollController();

  final List<String> gutImpacts = [
    "Feeds Harmful Gut Bacteria: High sugar levels support the growth of bad microbes in the gut.",
    "Disrupts Microbiota Balance: Lacks prebiotics or fiber that support healthy gut flora.",
    "Increases Gut Inflammation: Excess sugar and phosphoric acid may irritate the gut lining.",
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
          "Cola",
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
                  'assets8/images8/cola.jpeg',
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
                'Nutrients per 1 bottle',
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
                      'Values',
                      style: TextStyle(fontSize: textFontSize),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calorie', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text("150–180 kcal", style: TextStyle(fontSize: textFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text("40–45 g", style: TextStyle(fontSize: textFontSize))),
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
                    DataCell(Text('20–35 mg', style: TextStyle(fontSize: textFontSize))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: textFontSize))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: textFontSize))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: rowSpacing),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Negative Impacts on Gut Health',
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
