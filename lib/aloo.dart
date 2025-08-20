import 'package:flutter/material.dart';

class Aloo extends StatefulWidget {
  const Aloo({super.key});

  @override
  State<Aloo> createState() => _AlooState();
}

class _AlooState extends State<Aloo> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Irritate the gut: Mashed potato inside is often spiced with mustard seeds, chilies so it can irritate the gut lining and trigger abdominal cramps, loose stools, or gas.",
    "Gut flora: Due to excess salt and preservatives and reused oil with trans fats, which harm gut flora and digestion.",
    "Hard to digest: It can produce gas, especially when deep-fried, and may cause bloating in those with gut sensitivities",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aloo Bonda',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: screenWidth * 0.08,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                child: Image.asset(
                  'assets3/imgaes4/aloo.webp',
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.035),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 piece',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: screenWidth * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(screenWidth * 0.015),
              ),
              child: DataTable(
                columnSpacing: screenWidth * 0.04,
                columns: [
                  DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      )),
                  DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('150–200 kcal',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('20–25 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('2–4 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('200–300 mg',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('8–12 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.035),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effect of Aloo Bonda',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: screenWidth * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.015),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                  child: ListTile(
                    title: Text(
                      impacts[index],
                      style: TextStyle(fontSize: screenWidth * 0.04),
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
