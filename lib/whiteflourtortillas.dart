import 'package:flutter/material.dart';

class WhiteFlourTortilla extends StatefulWidget {
  const WhiteFlourTortilla({super.key});

  @override
  State<WhiteFlourTortilla> createState() => _WhiteFlourTortillaState();
}

class _WhiteFlourTortillaState extends State<WhiteFlourTortilla> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Glycemic Index: Spikes blood sugar and insulin, worsening insulin resistance in PCOS.",
    "Low Fiber: Refined flour lacks fiber, slowing digestion and promoting weight gain.",
    "Hormonal Disruption: Frequent intake may lead to hormonal imbalance due to poor glucose control.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'White Flour Tortilla',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.07,
            color: Colors.green.shade700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            SizedBox(height: height * 0.025),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets7/images7/white.jpeg', // Update with your actual asset path
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 tortilla',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                ),
              ),
            ),
            SizedBox(height: height * 0.037),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: width * 0.04,
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrient',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Amount per tortilla',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('140 kcal', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('24 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('1 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('0.5 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('3 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('3 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of White Flour Tortilla',
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.015),
                  child: ListTile(
                    title: Text(
                      impacts[index],
                      style: TextStyle(fontSize: width * 0.04),
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
