import 'package:flutter/material.dart';

class sangkhaya4 extends StatefulWidget {
  const sangkhaya4({super.key});

  @override
  State<sangkhaya4> createState() => _sangkhaya4State();
}

class _sangkhaya4State extends State<sangkhaya4> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Sugar: Sangkhaya contains condensed milk or palm sugar, which may upset gut bacteria balance and promote inflammation.",
    "Low in Fiber: The dessert lacks fiber-rich ingredients, making it less beneficial for gut motility and digestion.",
    "Coconut Milk Content: May lead to bloating or loose stools in those sensitive to high-fat dairy alternatives.",
    "Egg-based Texture: While protein-rich, eggs may cause intolerance symptoms (e.g. gas or cramps) in some sensitive individuals.",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 400;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sangkhaya',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.07, // responsive
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  child: Image.asset(
                    'assets5/images5/sangkhaya.jpeg',
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.045),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per serving (1 cup)',
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
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(screenWidth * 0.02),
              ),
              child: DataTable(
                columnSpacing: screenWidth * 0.05,
                columns: const [
                  DataColumn(label: Text('Nutrient')),
                  DataColumn(label: Text('Amount')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text('250–350 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('25–35 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('6–10 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('10–20 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre')),
                    DataCell(Text('0–1 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.035),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.045),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Sangkhaya on Gut',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
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
                  padding: EdgeInsets.only(
                    bottom: screenHeight * 0.015,
                    left: screenWidth * 0.02,
                    right: screenWidth * 0.02,
                  ),
                  child: ListTile(
                    title: Text(
                      impacts[index],
                      style: TextStyle(fontSize: screenWidth * 0.045),
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
