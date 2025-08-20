import 'package:flutter/material.dart';

class kachori2 extends StatefulWidget {
  const kachori2({super.key});

  @override
  State<kachori2> createState() => _kachori2State();
}

class _kachori2State extends State<kachori2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Spicy & Masala-Filled Filling: The stuffing (usually moong dal, urad dal, or spicy potato) contains strong spices like chili powder, asafoetida (hing), and garam masala, which can irritate the stomach lining and trigger acid reflux or cramps.",
    "Gas-Producing Ingredients: Moong dal or urad dal in the filling can ferment in the gut, leading to gas, bloating, or flatulence, especially in those with IBS or sensitive colons.",
    "Risk of Acidity: The combination of fried outer layer and spicy inner filling can increase stomach acid, leading to heartburn, burping, or sour taste in the mouth after eating.",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kachori',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: screenWidth * 0.08, // responsive font size
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                child: Image.asset(
                  'assets3/imgaes4/kachori.jpg',
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.035),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 piece',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: screenWidth * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(screenWidth * 0.015),
              ),
              child: DataTable(
                columnSpacing: screenWidth * 0.04,
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
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('180–250 kcal',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('20–25 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('4–6 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('200–300 mg',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('10–16 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.035),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effect of Kachori',
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
    );
  }
}
