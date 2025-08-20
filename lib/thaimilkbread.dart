import 'package:flutter/material.dart';

class ThaiMilkBread extends StatefulWidget {
  const ThaiMilkBread({super.key});

  @override
  State<ThaiMilkBread> createState() => _ThaiMilkBreadState();
}

class _ThaiMilkBreadState extends State<ThaiMilkBread> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbs: Made with refined white flour, which spikes blood sugar quickly.",
    "High Sugar: Sweetened with condensed milk or sugar, increasing glycemic load.",
    "Low Fiber: Lacks whole grains or fiber, leading to poor satiety and glucose control.",
    "Increased Insulin Demand: Causes rapid glucose rise, stressing insulin production.",
    "Weight Gain Risk: High-calorie and low-nutrient, contributing to insulin resistance.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thai Milk Bread',
          style: TextStyle(
            fontSize: width * 0.075,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
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
                  'assets20/images20/bread.jpeg',
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
                'Nutrients per slice (~50g)',
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w500,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.025),

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
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('150–180 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('8–12 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbs', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('25–30 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('3–6 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('<1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Why It’s Harmful for Diabetes',
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
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
