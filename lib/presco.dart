import 'package:flutter/material.dart';

class ProseccoAlcohol extends StatefulWidget {
  const ProseccoAlcohol({super.key});

  @override
  State<ProseccoAlcohol> createState() => _ProseccoAlcoholState();
}

class _ProseccoAlcoholState extends State<ProseccoAlcohol> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Disrupts Gut Microbiota: Prosecco, like other alcoholic beverages, can reduce beneficial gut bacteria diversity.",
    "Increases Intestinal Permeability: Regular intake may weaken the gut lining, leading to 'leaky gut'.",
    "Impairs Nutrient Absorption: Alcohol interferes with absorption of vitamins and minerals crucial for digestion.",
    "Stimulates Inflammation: Prosecco may trigger inflammatory responses in the digestive tract.",
    "Can Cause Bloating: Carbonation in sparkling wines can lead to gas buildup and abdominal discomfort."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prosecco',
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
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/p.jpeg', // Replace with actual asset path
                    height: 250,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 glass',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(columns: const [
                DataColumn(label: Text('Nutrient')),
                DataColumn(label: Text('Amount')),
              ], rows: const [
                DataRow(cells: [
                  DataCell(Text('Calories')),
                  DataCell(Text('80–90 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('1.5–2 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sugar')),
                  DataCell(Text('1–1.5 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Alcohol')),
                  DataCell(Text('11% ABV')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fibre')),
                  DataCell(Text('0 g')),
                ]),
              ]),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Negative Impact of Prosecco on Gut Health',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
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
            ),
          ],
        ),
      ),
    );
  }
}
