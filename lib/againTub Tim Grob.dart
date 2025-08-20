import 'package:flutter/material.dart';

class tubtimgrob23 extends StatefulWidget {
  const tubtimgrob23({super.key});

  @override
  State<tubtimgrob23> createState() => _tubtimgrob23State();
}

class _tubtimgrob23State extends State<tubtimgrob23> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Sugar Content: Made with syrup and sweetened coconut milk, which may disrupt gut microbiome and lead to gas or bloating.",
    "Low Fiber: Lacks whole grains or fibrous fruits, limiting benefits for bowel regularity.",
    "Coconut Milk Fats: While plant-based, coconut milk can cause digestive issues in people with fat malabsorption.",
    "Food Coloring & Tapioca: Artificial color and chewy tapioca coating might irritate sensitive digestive systems.",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tub Tim Grob',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.07,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.022),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  child: Image.asset(
                    'assets5/images5/tubtimgrob.jpeg',
                    height: screenWidth * 0.6,
                    width: screenWidth * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.045),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per serving (1 bowl)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.035),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(screenWidth * 0.015),
              ),
              child: DataTable(
                columnSpacing: screenWidth * 0.1,
                columns: [
                  DataColumn(
                      label: Text(
                        'Nutrient',
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      )),
                  DataColumn(
                      label: Text(
                        'Amount',
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('250–350 kcal',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('30–45 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('1–3 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('10–15 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
                    DataCell(Text('0–1 g',
                        style: TextStyle(fontSize: screenWidth * 0.04))),
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
                  'Effect of Tub Tim Grob on Gut',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.02,
                      right: screenWidth * 0.02,
                      bottom: screenHeight * 0.015),
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
