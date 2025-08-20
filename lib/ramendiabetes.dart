import 'package:flutter/material.dart';

class ramen1111 extends StatefulWidget {
  const ramen1111({super.key});

  @override
  State<ramen1111> createState() => _ramen1111State();
}

class _ramen1111State extends State<ramen1111> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Wheat Noodles: Ramen noodles are made from refined flour, which has a high glycemic index and causes rapid spikes in blood sugar.",
    "High Sodium Broth: Most ramen contains excessive sodium, which can worsen blood pressure—a common issue for diabetics.",
    "Low in Fiber: Ramen lacks fiber, which is important for stabilizing blood glucose levels and aiding digestion.",
    "Often High in Fat: Some ramen dishes include fatty meats or oily toppings that contribute to insulin resistance and weight gain."
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery sizes
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ramen Dish',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.08, // 32 → responsive
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
                    'assets5/images5/noodles.jpeg',
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
                  'Nutrients per 1 bowl',
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
                      'Amount per bowl',
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('450–600 kcal',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('55–70 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('12–18 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('15–25 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('1200–1800 mg',
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
                  'Effects of Ramen',
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
