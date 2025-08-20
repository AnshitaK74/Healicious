import 'package:flutter/material.dart';

class yakisoba extends StatefulWidget {
  const yakisoba({super.key});

  @override
  State<yakisoba> createState() => _yakisobaState();
}

class _yakisobaState extends State<yakisoba> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    " Hidden Sugars in Sauces:Yakisoba is typically flavored with sauces that contain sugar (e.g., Worcestershire sauce, soy sauce, and other seasonings) and these sugars can add unnecessary calories, and excess sugar in the diet can lead to insulin resistance over time, further promoting fat storage and hindering fat loss.",
    " High Sodium:The sauce in yakisoba can be quite salty, leading to high sodium content and while sodium itself doesn’t cause fat gain, it can cause water retention, leading to temporary weight gain",
    "High in Refined Carbs:White noodles are high in refined carbohydrates and when you eat refined carbs, your body breaks them down into glucose (blood sugar), leading to a spike in insulin and insulin helps store excess glucose as fat",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'yakisoba',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // ~32px before
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.022), // ~18px before
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025), // ~10 before
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.025),
                  child: Image.asset(
                    'assets5/images5/yaki.jpeg',
                    height: height * 0.31, // ~250px before
                    width: width * 0.53,   // ~200px before
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.025), // ~20px before
            Padding(
              padding: EdgeInsets.only(left: width * 0.045), // ~18 before
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 plate',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05, // ~20px before
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.037), // ~30px before
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(width * 0.015), // ~5 before
              ),
              child: DataTable(
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
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('500–700 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('70–90', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('10–15 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('20–30 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('2–5 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034), // ~28px before
            Padding(
              padding: EdgeInsets.only(left: width * 0.045), // ~18 before
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of yakisoba',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05, // ~20px before
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.015), // ~12 before
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
