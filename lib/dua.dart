import 'package:flutter/material.dart';

class Duvalin extends StatefulWidget {
  const Duvalin({super.key});

  @override
  State<Duvalin> createState() => _DuvalinState();
}

class _DuvalinState extends State<Duvalin> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Sugar: Duvalín is a sugar-rich candy that can cause rapid spikes in blood glucose levels.",
    "Low Nutritional Value: It offers minimal fiber or protein, making it less suitable for sustained energy or blood sugar control.",
    "Trans Fats and Additives: Some versions may include hydrogenated oils and emulsifiers, which contribute to inflammation and insulin resistance."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Duvalín",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075,
            color: Colors.green.shade700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            SizedBox(height: height * 0.025),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets8/images8/f.jpg', // Ensure this image exists
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 pack',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                ),
              ),
            ),
            SizedBox(height: height * 0.037),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
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
                      'Amount per 1 pack',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("80 kcal", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("9 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("8 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text("4.5 g", style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Duvalín',
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),

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
                      style: TextStyle(fontSize: width * 0.04),
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
