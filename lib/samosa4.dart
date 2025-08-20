import 'package:flutter/material.dart';

class samosa4 extends StatefulWidget {
  const samosa4({super.key});

  @override
  State<samosa4> createState() => _samosa4State();
}

class _samosa4State extends State<samosa4> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Heavy and Oily: Deep-fried in oil, making it hard to digest and can leave you feeling bloated, gassy, or uncomfortable.",
    "Trigger for IBS or Reflux: For people with IBS, GERD, or acid reflux, even one samosa can trigger symptoms like cramping, bloating, or burning.",
    "Hard-to-Digest Deep-Fried Food: Samosas are typically deep-fried, which can slow digestion and lead to bloating, gas, or acid reflux — especially problematic for those with sensitive stomachs or acid-related issues like GERD.",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Samosa',
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
                  'assets3/imgaes4/samosa.webp',
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
                    DataCell(Text('200–270 kcal',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('25–30 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('2–4 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('250–350 mg',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                    DataCell(Text('12–18 g',
                        style: TextStyle(fontSize: screenWidth * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.035),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effect of Samosa',
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
