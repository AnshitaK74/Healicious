import 'package:flutter/material.dart';

class tofuTod extends StatefulWidget {
  const tofuTod({super.key});

  @override
  State<tofuTod> createState() => _tofuTodState();
}

class _tofuTodState extends State<tofuTod> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in unhealthy fats: Deep frying tofu increases trans fats, which can worsen inflammation and insulin resistance in PCOS.",
    "High in calories: Fried tofu is calorie-dense, which may lead to weight gain, especially if consumed in large amounts.",
    "Low in fiber: Fried tofu does not contain enough fiber to help regulate blood sugar levels, which is crucial for managing PCOS.",
    "May worsen insulin resistance: Fried foods can increase insulin resistance, making it harder for the body to regulate blood sugar.",
    "Unbalanced hormone levels: High-fat fried foods may disrupt hormonal balance, a key concern for individuals with PCOS."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tofu Tod (Fried Tofu)",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/tofu_tod.jpg', // Replace with your image path
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
                child: Text(
                  'Nutrients per 1 Piece',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
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
                  DataColumn(label: Text('Amount per 1 piece')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text("50-80 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("4-6 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('4-6 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('0.5-1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fats')),
                    DataCell(Text('3-5 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Effects of Tofu Tod (Fried Tofu) in PCOS:',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
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
              },
            )
          ],
        ),
      ),
    );
  }
}
