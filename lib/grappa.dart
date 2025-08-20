import 'package:flutter/material.dart';

class Grappa extends StatefulWidget {
  const Grappa({super.key});

  @override
  State<Grappa> createState() => _GrappaState();
}

class _GrappaState extends State<Grappa> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Alcohol Strength: Grappa typically has 35–60% alcohol, which can damage the stomach lining and gut barrier.",
    "Digestive Tract Irritation: High-proof alcohol like Grappa may lead to gastritis, ulcers, or increased gut inflammation.",
    "Kills Good Bacteria: Strong alcohol disrupts gut microbiota by killing beneficial probiotic strains.",
    "Increased Gut Permeability: Heavy Grappa consumption may cause 'leaky gut', leading to toxins entering the bloodstream.",
    "Triggers Acid Reflux: Grappa relaxes the lower esophageal sphincter, increasing the chance of heartburn and reflux.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GRAPPA',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
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
                    'assets12/images12/grappe.jpeg', // Add your image here
                    height: 250,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Approx. Nutrients per 100ml',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.purple.shade800,
                  ),
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
                    DataCell(Text('220-300 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Alcohol')),
                    DataCell(Text('35-60% ABV')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('0g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('0g')),
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
                  'Negative Effects on Gut',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.purple.shade800,
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
            )
          ]),
        ),
      ),
    );
  }
}
