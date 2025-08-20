import 'package:flutter/material.dart';

class FrozenTonkatsu1 extends StatefulWidget {
  const FrozenTonkatsu1({super.key});

  @override
  State<FrozenTonkatsu1> createState() => _FrozenTonkatsu1State();
}

class _FrozenTonkatsu1State extends State<FrozenTonkatsu1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Breading: Made with refined flour, increasing the glycemic load significantly.",
    "Deep-Fried and Frozen: High in trans fats and unhealthy saturated fats, which worsen insulin resistance.",
    "Low Nutrient Density: Mostly fat and carbs with little fiber or micronutrients essential for diabetic health.",
    "High Sodium: Contains excessive salt for preservation, raising blood pressure and cardiovascular risks.",
    "Preservatives & Additives: Ultra-processed ingredients can cause inflammation and hormonal imbalances."
  ];

  @override
  Widget build(BuildContext context) {
    // Get screen sizes for responsiveness
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frozen Tonkatsu',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // Responsive title
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.018),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets2/images2/ton.jpeg', // Update with actual path
                      height: screenHeight * 0.3, // Responsive height
                      width: screenWidth * 0.55, // Responsive width
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 frozen cutlet',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05, // Responsive font size
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(screenWidth * 0.013),
                ),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('300–350 kcal',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('20–25 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('20–25 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('12–15 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('700–1000 mg',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('<1 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Frozen Tonkatsu',
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
                padding: EdgeInsets.all(screenWidth * 0.025),
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
      ),
    );
  }
}
