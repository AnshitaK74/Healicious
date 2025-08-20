import 'package:flutter/material.dart';

class padseaeew extends StatefulWidget {
  const padseaeew({super.key});

  @override
  State<padseaeew> createState() => _padseaeewState();
}

class _padseaeewState extends State<padseaeew> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Noodles: Pad See Ew is made with wide rice noodles, which are high in carbohydrates and have a high glycemic index — raising blood glucose levels quickly.",
    "Sweet Soy Sauce: Often includes sweet soy sauce, which adds significant sugar content and increases the glycemic load of the dish.",
    "Low in Fiber: Unless vegetables like Chinese broccoli are used in large amounts, the dish lacks sufficient fiber to help regulate blood sugar.",
    "High in Calories: A typical serving contains 400–600 kcal, which may contribute to weight gain and insulin resistance if consumed regularly.",
    "Oil Usage: Often stir-fried in a generous amount of oil, increasing the fat content without offering healthy fats.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pad See Ew',
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
            SizedBox(height: height * 0.02),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets20/images20/3.jpeg', // Add this image to your assets
                  height: height * 0.32,
                  width: width * 0.55,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per serving',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(width * 0.02),
              ),
              child: DataTable(
                columnSpacing: width * 0.05,
                columns: [
                  DataColumn(
                    label: Text(
                      'Nutrients',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Values',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('400–600 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('50–70 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('8–12 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('10–15 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('15–20 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effect of Pad See Ew',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
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
            )
          ],
        ),
      ),
    );
  }
}
