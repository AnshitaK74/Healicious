import 'package:flutter/material.dart';

class padthai222 extends StatefulWidget {
  const padthai222({super.key});

  @override
  State<padthai222> createState() => _padthai222State();
}

class _padthai222State extends State<padthai222> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Refined Carbs: Pad Thai often uses rice noodles which have a high glycemic index.",
    "Sugar in Sauce: Tamarind sauce often includes added sugar, increasing total carb load.",
    "Hidden Fats: Oil-fried tofu, peanuts, and eggs add saturated fat, which may worsen insulin resistance.",
    "Low Fiber: Lacks sufficient fiber unless extra vegetables are added.",
    "Portion Size Risk: Large servings can lead to blood sugar spikes post-meal.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pad Thai',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 14),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets20/images20/15.jpeg', // Make sure this image exists
                      height: 250,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per serving (~1 plate)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade800,
                  ),
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
                      DataCell(Text('400–500 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('55–70 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('10–18 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('14–20 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('10–15 g')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Pad Thai',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade800,
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
      ),
    );
  }
}
