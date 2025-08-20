import 'package:flutter/material.dart';

class EnergyDrink extends StatefulWidget {
  const EnergyDrink({super.key});

  @override
  State<EnergyDrink> createState() => _EnergyDrinkState();
}

class _EnergyDrinkState extends State<EnergyDrink> {
  final ScrollController _scrollController = ScrollController();

  final List<String> negativeImpacts = [
    "High Caffeine Content: ~80–150 mg per can may irritate the gut lining, increase acid production, and worsen gastritis or reflux.",
    "Added Sugars: Large amounts (25–30g) promote harmful gut bacteria growth and cause bloating, gas, or diarrhea.",
    "Carbonation: Can lead to increased gas and bloating, especially in people with IBS or sensitive digestion.",
    "Artificial Additives: Preservatives and colorants may irritate the gut or trigger inflammatory responses in some individuals.",
    "Taurine & Stimulants: May increase gut motility, causing discomfort or cramps in sensitive users.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Energy Drink (1 Can)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
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
                  'assets5/images5/drink.jpeg', // Replace with your actual image asset
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
                  'Nutrients per 1 Can',
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
                  DataColumn(label: Text('Amount per Can')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text("110–140 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("27–35 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('25–30 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Caffeine')),
                    DataCell(Text('80–150 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('150–200 mg')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  'Effects of Energy Drink',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              itemCount: negativeImpacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(negativeImpacts[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
