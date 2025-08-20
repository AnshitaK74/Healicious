import 'package:flutter/material.dart';

class PooriInfo00 extends StatefulWidget {
  const PooriInfo00({super.key});

  @override
  State<PooriInfo00> createState() => _PooriInfo00State();
}

class _PooriInfo00State extends State<PooriInfo00> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in refined flour: Poori is often made with maida or wheat flour, which can raise blood sugar levels rapidly.",
    "Deep-fried: Absorbs a lot of oil during frying, increasing saturated fat and total calorie intake.",
    "Low fiber: Lacks complex carbohydrates and fiber, which are important for stable blood sugar levels.",
    "High glycemic load: Leads to quick spikes in blood glucose levels—especially risky for diabetics.",
    "Increases insulin resistance risk: Regular consumption of deep-fried refined carbs can worsen metabolic health over time.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Poori',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
              fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets20/images20/poori.jpeg', // Replace with actual image path
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nutrients per 2 Pooris ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.green.shade800)),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Nutrients')),
                  DataColumn(label: Text('Values')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text('280–350 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('30–40 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('4–6 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('200–300 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('15–20 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Poori on Diabetes',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    title: Text(impacts[index]),
                  ),
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}
