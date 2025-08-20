import 'package:flutter/material.dart';

class daifuku extends StatefulWidget {
  const daifuku({super.key});

  @override
  State<daifuku> createState() => _daifukuState();
}

class _daifukuState extends State<daifuku> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Insulin Resistance: Made with glutinous rice flour and sweet fillings, daifuku is high in refined carbs and sugar, which cause insulin spikes—a key driver of hormonal imbalance in PCOS.",
    "Increased Androgens: Frequent sugar spikes can raise insulin levels, which in turn may increase androgens (male hormones), worsening symptoms like acne, irregular periods, and excess hair.",
    "Inflammation: The sugar and sticky rice base may also increase inflammation, already elevated in PCOS.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daifuku",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
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
                  'assets5/images5/ff.jpeg',
                  height: height * 0.28,
                  width: width * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.025),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.05, top: height * 0.015),
                child: Text(
                  'Nutrients per 1 plate',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(
                    label: Text('Nutrient', style: TextStyle(fontSize: width * 0.04)),
                  ),
                  DataColumn(
                    label: Text('Amount per 1 plate', style: TextStyle(fontSize: width * 0.04)),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calorie', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("120–150 kcal", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("30–35 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0–1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1–2 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('20–25 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1–2 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.025),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.02, left: width * 0.05),
                child: Text(
                  'Effects of Daifuku',
                  style: TextStyle(
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(width * 0.03),
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
