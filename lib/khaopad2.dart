import 'package:flutter/material.dart';

class khaopad2 extends StatefulWidget {
  const khaopad2({super.key});

  @override
  State<khaopad2> createState() => _khaopad2State();
}

class _khaopad2State extends State<khaopad2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in refined carbs: Made with white rice, which can spike blood sugar and lead to fat storage.",
    "Calorie-dense: Fried in oil with eggs, meats, or sauces—1 serving can easily exceed 500–700 kcal.",
    "High fat content: Stir-frying in oil adds significant fat, especially if animal fats or oils are used excessively.",
    "Low in fiber: Lacks vegetables or whole grains, leading to poor satiety and higher hunger post-meal.",
    "Encourages overeating: Large portions and umami flavors make it easy to eat beyond fullness.",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Khao Pad",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
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
                  'assets6/images6/khao.jpg', // Replace with your image path
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
                  'Nutrients per 1 bowl (~250g)',
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
                  DataColumn(label: Text('Amount per bowl')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text("450-550 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("55-70 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('8-15 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre')),
                    DataCell(Text('2-4 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fats')),
                    DataCell(Text('15-22 g')),
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
                  'Effects of Khao Pad :',
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
