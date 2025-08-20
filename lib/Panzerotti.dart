import 'package:flutter/material.dart';

class Panzerotti extends StatefulWidget {
  const Panzerotti({super.key});

  @override
  State<Panzerotti> createState() => _PanzerottiState();
}

class _PanzerottiState extends State<Panzerotti> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Deep-fried dough can slow digestion and cause heaviness in the stomach.",
    "Filled with cheese and processed meats, which are hard to digest and may disrupt gut flora.",
    "Refined flour and high fat content can lead to bloating, gas, and gut inflammation in sensitive individuals."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Panzerotti',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
              fontSize: width * 0.075),
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
                  borderRadius: BorderRadius.circular(width * 0.025)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets15/images15/x.jpeg',
                  height: height * 0.25,
                  width: width * 0.45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 piece',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800),
              ),
            ),
            SizedBox(height: height * 0.025),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(
                      label: Text('Nutrients',
                          style: TextStyle(fontSize: width * 0.04))),
                  DataColumn(
                      label: Text('Values',
                          style: TextStyle(fontSize: width * 0.04))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('300–400 kcal',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('30–35 g',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('8–12 g',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('400–600 mg',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('15–20 g',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effect of Panzerotti',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800),
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
