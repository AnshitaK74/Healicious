import 'package:flutter/material.dart';

class tonkatsu2 extends StatefulWidget {
  const tonkatsu2({super.key});

  @override
  State<tonkatsu2> createState() => _tonkatsu2State();
}

class _tonkatsu2State extends State<tonkatsu2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Fat (Deep-Fried):The pork is coated in breadcrumbs and deep-fried, absorbing a lot of oil and high-fat foods slow gastric emptying, which can cause bloating, indigestion, or acid reflux.",
    "High Sodium (Sauce & Seasoning):Tonkatsu is often served with a sweet, salty sauce that’s high in sodium and sugar and this can lead to bloating, water retention, or gut inflammation.",
    ". Low in Fiber:Typically served with white rice and shredded cabbage, but the main item (Tonkatsu) has almost no fiber, offering little support for gut motility or microbiome health."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tonkatsu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.025),
                  child: Image.asset(
                    'assets16/images16/no.jpeg',
                    height: height * 0.31,
                    width: width * 0.53,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.034),

            Text(
              'Nutrients per 1 plate (with rice, cabbage and sauce)',
              style: TextStyle(
                fontSize: width * 0.05,
                color: Colors.green.shade800,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.037),

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
                      'Amount per 1 plate',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calorie', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("700–850 kcal", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("65–80 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('30–35 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('3–4 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('800–1100 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('30–35 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),

            Text(
              'Effects of Tonkatsu',
              style: TextStyle(
                fontSize: width * 0.05,
                color: Colors.green.shade800,
                fontWeight: FontWeight.w500,
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
