import 'package:flutter/material.dart';

class soya extends StatefulWidget {
  const soya({super.key});

  @override
  State<soya> createState() => _soyaState();
}

class _soyaState extends State<soya> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Contains phytoestrogens : may disrupt hormonal balance in estrogen-dominant women.",
    "Ovulation Disruption : High soy intake might delay or interfere with ovulation in sensitive individuals.",
    "Fertility Concerns : High intake may impact estrogen-progesterone balance, which could potentially interfere with fertility in sensitive individuals.",
    "Gut Health Issues : Soy can cause bloating or gas, especially in women sensitive to legumes or with weak digestion.",
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
          'Soya',
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
                  'assets2/images2/soya.webp',
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
                    DataCell(Text('173 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('9.9 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('16.6 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('9.0 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('6.0 g', style: TextStyle(fontSize: fontSizeText))),
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
                  'Effect of soya',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeSubtitle,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: spacingSmall / 2),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding * 0.7),
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
