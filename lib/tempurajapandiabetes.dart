import 'package:flutter/material.dart';

class tempura1 extends StatefulWidget {
  const tempura1({super.key});

  @override
  State<tempura1> createState() => _tempura1State();
}

class _tempura1State extends State<tempura1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Refined Carbs: Tempura is usually made with white flour batter, which spikes blood glucose levels quickly.",
    "Deep Fried in Oil: The frying process adds unhealthy fats that may contribute to insulin resistance.",
    "Low Fiber Content: Lacks dietary fiber, which slows glucose absorption and supports better sugar control.",
    "May Raise Cholesterol: Regular intake of deep-fried foods like tempura can increase LDL (bad) cholesterol levels, which is risky for diabetics."
  ];

  @override
  Widget build(BuildContext context) {
    // Responsive scaling
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tempura Dish',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.08, // Responsive font
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.018), // 18
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025), // 10
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  child: Image.asset(
                    'assets5/images5/tempura.jpg',
                    height: screenHeight * 0.3, // 250
                    width: screenWidth * 0.55, // 200
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.028), // 20
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.045), // 18
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 serving',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05, // 20
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04), // 30
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(screenWidth * 0.013), // 5
              ),
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      'Nutrient',
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount per serving',
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('300–450 kcal',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('30–40 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('10–15 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('18–28 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('1–2 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.035), // 28
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.045), // 18
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of tempura',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05, // 20
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(screenWidth * 0.025), // 10
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.015), // 12
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
