import 'package:flutter/material.dart';

class teriyaki extends StatefulWidget {
  const teriyaki({super.key});

  @override
  State<teriyaki> createState() => _teriyakiState();
}

class _teriyakiState extends State<teriyaki> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Sugar Content: Teriyaki sauce often contains a lot of added sugar, which can spike blood glucose levels rapidly, making it harmful for diabetics.",
    "High Glycemic Index: Teriyaki dishes are usually served with white rice or noodles, both of which have a high glycemic index and worsen blood sugar control.",
    "Hidden Carbs: The sauce may contain hidden carbohydrates from cornstarch or sweeteners, which can make it difficult for diabetics to manage carb intake properly.",
    "Increased Insulin Demand: Frequent consumption of sugary teriyaki meals increases insulin demand and may contribute to insulin resistance over time."
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery sizes
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Teriyaki Dish',
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
                    'assets5/images5/japan.jpg',
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
                    DataCell(Text('400–550 kcal',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('45–60 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('15–25 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('10–20 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('18–25 g',
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
                  'Effects of Teriyaki',
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
