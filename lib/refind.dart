import 'package:flutter/material.dart';

class RefinedOil extends StatefulWidget {
  const RefinedOil({super.key});

  @override
  State<RefinedOil> createState() => _RefinedOilState();
}

class _RefinedOilState extends State<RefinedOil> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Like all oils, refined oil is calorie-dense and can easily lead to excess energy intake if not used cautiously.",
    "Low nutritional value: The refining process removes most beneficial nutrients such as vitamin E and antioxidants.",
    "Contains trans fats (in some types): Depending on the brand and process, refined oils may contain small amounts of trans fats, contributing to weight gain and poor heart health.",
    "Promotes inflammation: Certain refined oils, especially those high in omega-6 fatty acids, can contribute to chronic inflammation linked with obesity.",
    "Often overused in cooking: Because of their neutral flavor, refined oils are often used in large quantities, increasing total fat intake without satiety.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Refined Oil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: width * 0.075, // ✅ Responsive font size
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04), // ✅ Responsive padding
        child: Column(
          children: [
            // 🫒 Image Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets11/images11/s.webp', // Update with correct image path
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: height * 0.034),

            // 📌 Nutrients Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 tablespoon',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05, // ✅ Responsive
                  color: Colors.green.shade800,
                ),
              ),
            ),

            SizedBox(height: height * 0.02),

            // 📊 Nutrients Table
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
                      'Amount per 1 tbsp',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('120 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('14 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),

            SizedBox(height: height * 0.034),

            // 📌 Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Refined Oil',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05, // ✅ Responsive
                  color: Colors.green.shade800,
                ),
              ),
            ),

            SizedBox(height: height * 0.015),

            // 📋 Effects List
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
                      style: TextStyle(fontSize: width * 0.04), // ✅ Responsive
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
