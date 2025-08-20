import 'package:flutter/material.dart';

class beer3 extends StatefulWidget {
  const beer3({super.key});

  @override
  State<beer3> createState() => _beer3State();
}

class _beer3State extends State<beer3> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in empty calories: A 330 ml bottle contains ~150–200 kcal with little nutritional value.",
    "Encourages abdominal fat: Alcohol from beer is commonly linked to 'beer belly' due to fat storage changes.",
    "Lowers fat burning: The body prioritizes metabolizing alcohol over fat, slowing weight loss.",
    "Increases appetite: Alcohol disrupts satiety hormones, causing overeating.",
    "Frequently consumed in excess: Leads to cumulative calorie overload if consumed regularly.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Beer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // responsive
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            // Image Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets20/images20/img_6.png', // Replace with correct path
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            // Nutrients Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 330 ml bottle',
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w500,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.025),

            // Data Table
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
                      'Amount per bottle',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("150–200 kcal", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("10–15 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1–2 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fats', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Alcohol', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('4–5% ABV', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),

            // Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Beer:',
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w500,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),

            // Effects List
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
