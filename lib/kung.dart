import 'package:flutter/material.dart';

class KungPaoChicken extends StatefulWidget {
  const KungPaoChicken({super.key});

  @override
  State<KungPaoChicken> createState() => _KungPaoChickenState();
}

class _KungPaoChickenState extends State<KungPaoChicken> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High sodium: Often made with soy sauce and chili sauces, contributing to 800–1200 mg sodium per serving.",
    "Hidden sugar: Commercial recipes may include added sugar in sauces, worsening insulin resistance.",
    "High calorie density: Fried chicken pieces and oil-heavy sauces increase calorie load.",
    "Spices and sauces: May irritate sensitive guts or cause acidity, gas, or cramps.",
    "Low fiber: Despite including vegetables like bell peppers, it lacks whole grains or fiber-rich additions."
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery values for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kung Pao Chicken',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.07, // responsive font
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
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                  child: Image.asset(
                    'assets16/images16/41.jpeg',
                    height: screenHeight * 0.25,
                    width: screenWidth * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.04),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per serving ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.015),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(screenWidth * 0.02),
                ),
                child: DataTable(
                  columnSpacing: screenWidth * 0.1,
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
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('350–450 kcal',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('15–22 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('20–25 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('20–28 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('900–1200 mg',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.04),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Kung Pao Chicken',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
