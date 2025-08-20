import 'package:flutter/material.dart';

class Satay extends StatefulWidget {
  const Satay({super.key});

  @override
  State<Satay> createState() => _SatayState();
}

class _SatayState extends State<Satay> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Good Source of Protein: The lean meat in Satay helps regulate blood sugar levels by providing protein that digests slower than carbs.",
    "Heart-Healthy Fats: The unsaturated fats in the peanut sauce and meat help improve cholesterol levels, but be mindful of the saturated fat in the marinade.",
    "Moderate Carbohydrates: Satay is relatively low in carbohydrates, but the peanut sauce and any accompanying rice may raise carb content.",
    "High in Sodium: The marinade and peanut sauce add a significant amount of sodium, which may affect blood pressure and cause water retention.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Satay (1 Plate)",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/satay.jpg', // Use the image path of Satay
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Nutrition per 1 plate (3-4 skewers)',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Nutrient')),
                  DataColumn(label: Text('Amount')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text("200–250 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("10–15 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('15–20 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total Fat')),
                    DataCell(Text('14–18 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Saturated Fat')),
                    DataCell(Text('5–7 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Unsaturated Fat')),
                    DataCell(Text('5–7 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('4–6 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('500–700 mg')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Effects on Diabetes and Health:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(impacts[index]),
                  );
                })
          ],
        ),
      ),
    );
  }
}
