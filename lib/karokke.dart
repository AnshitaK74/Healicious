import 'package:flutter/material.dart';

class karokke1 extends StatefulWidget {
  const karokke1({super.key});

  @override
  State<karokke1> createState() => _karokke1State();
}

class _karokke1State extends State<karokke1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Caloric Density: Korokke is deep-fried and potato-based, making it calorie-dense (~200–300 kcal per piece), which may contribute to weight gain.",
    "Rich in Carbs and Fats: The combination of mashed potatoes, breading, and frying oil increases both carbohydrate and fat intake—problematic in obesity.",
    "Low Fiber Content: Despite using potatoes, fiber is low due to peeling and refining, which may impair satiety and worsen appetite control in obese individuals.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "karokke",
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
                    'assets5/images5/k.jpeg',
                    height: height * 0.28, // ~200px before
                    width: width * 0.4,    // ~150px before
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height * 0.025),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.05,
                    top: height * 0.015,
                  ),
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
                      DataCell(Text("200–300 kcal", style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text("20–30 g", style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('12–18 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('1–2 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('500–800 mg', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('4–6 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: height * 0.025),
              Padding(
                padding: EdgeInsets.only(left: width * 0.035),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.02,
                      left: width * 0.05,
                    ),
                    child: Text(
                      'Effects of karokke',
                      style: TextStyle(
                        fontSize: width * 0.05,
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
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
        ));
  }
}
