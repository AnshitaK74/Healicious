import 'package:flutter/material.dart';

class InstantNoodles111 extends StatefulWidget {
  const InstantNoodles111({super.key});

  @override
  State<InstantNoodles111> createState() => _InstantNoodles111State();
}

class _InstantNoodles111State extends State<InstantNoodles111> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: A typical pack can contain 350–450 kcal, contributing to excess energy intake.",
    "Refined carbs: Made with refined flour (maida), which has low satiety and can spike blood sugar.",
    "High in fat: Often fried in palm oil, adding to saturated fat intake.",
    "Very low in fiber: Lacks vegetables or whole grains, making it less filling and poor for digestion.",
    "Excess sodium: One pack may have 900–1500 mg sodium, leading to water retention and weight gain."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instant Noodles',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800)),
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
                  'assets16/images16/43.webp',
                  height: 200,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nutrients per serving ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.green.shade800)),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(columns: const [
                DataColumn(label: Text('Nutrients')),
                DataColumn(label: Text('Values')),
              ], rows: const [
                DataRow(cells: [
                  DataCell(Text('Calories')),
                  DataCell(Text('350–450 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('40–50 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('6–10 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('14–20 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sodium')),
                  DataCell(Text('900–1500 mg')),
                ]),
              ]),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Instant Noodles',
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
