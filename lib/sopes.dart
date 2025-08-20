import 'package:flutter/material.dart';

class Sopes extends StatefulWidget {
  const Sopes({super.key});

  @override
  State<Sopes> createState() => _SopesState();
}

class _SopesState extends State<Sopes> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Spikes Blood Sugar: Refined masa raises blood sugar and insulin levels, worsening insulin resistance in PCOS.",
    "Promotes Weight Gain: Fried preparation adds excess calories and fats, contributing to body fat and hormone imbalance.",
    "Increases Inflammation: Fried and refined ingredients heighten systemic inflammation, worsening symptoms like acne and fatigue.",
    "Low Fiber Content: White masa lacks fiber, impairing gut health and glucose control.",
    "Disrupts Hormonal Balance: Frequent intake may elevate androgens, leading to acne, hair growth, and irregular periods.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sopes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075,
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
                  'assets7/images7/soap.jpeg', // Replace with actual asset path
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
                'Nutrients per 1 medium sope',
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
                        'Amount per sope',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('220 kcal', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('28 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('2 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('10 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('4 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('250 mg', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Sopes',
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
