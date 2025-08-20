import 'package:flutter/material.dart';

class BubbleTea extends StatefulWidget {
  const BubbleTea({super.key});

  @override
  State<BubbleTea> createState() => _BubbleTeaState();
}

class _BubbleTeaState extends State<BubbleTea> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in sugar: Bubble tea is typically sweetened with syrups or sugars, leading to rapid increases in blood sugar levels.",
    "Calorie-dense: With added sugar, tapioca pearls, and milk, bubble tea can be extremely high in calories, contributing to weight gain and making diabetes harder to manage.",
    "Tapioca pearls are high in refined carbs: The pearls are made from starch and can cause blood sugar spikes due to their high glycemic index.",
    "May contain artificial sweeteners: Some bubble teas use artificial sweeteners or preservatives, which could affect insulin sensitivity and gut health.",
    "Low in nutritional value: Bubble tea provides little in the way of vitamins, minerals, or fiber, which makes it an unhealthy option for those managing diabetes.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BUBBLE TEA (BOBA)',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade800,
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
                  'assets3/images4/bubbletea.webp', // Update path as needed
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nutrients per 1 glass (approx.)',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.orange.shade800)),
              ),
            ),
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
                    DataCell(Text('300–450 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('60–80 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('2–4 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('50–100 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('6–10 g')),
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
                  'Negative Effects on Diabetes',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.orange.shade800),
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
                    leading: Icon(Icons.warning_amber_rounded,
                        color: Colors.orange),
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
