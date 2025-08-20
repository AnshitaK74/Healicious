import 'package:flutter/material.dart';

class k extends StatefulWidget {
  const k({super.key});

  @override
  State<k> createState() => _kState();
}

class _kState extends State<k> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Increased Inflammation: Deep-frying in oils high in omega-6 fats may promote inflammation, worsening PCOS symptoms.",
    "Weight Gain: The calorie-dense, low-fiber nature of korokke can contribute to weight gain, which is challenging to manage in PCOS.",
    "Insulin Spikes: Due to the refined carbs in the breading and potatoes, it can worsen insulin resistance, a key issue in PCOS.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Korokke",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(height: 20),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/k.jpeg',
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
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Nutrients per 1 plate',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade800,
                  ),
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
                  DataColumn(label: Text('Amount per 1 plate')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text('180–250 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('20–30 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('10–15 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('1–2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('300–500 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('4–6 g')),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Effects of Korokke',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}