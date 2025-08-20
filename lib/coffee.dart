import 'package:flutter/material.dart';

class CannedCoffee extends StatefulWidget {
  const CannedCoffee({super.key});

  @override
  State<CannedCoffee> createState() => _CannedCoffeeState();
}

class _CannedCoffeeState extends State<CannedCoffee> {
  final ScrollController _scrollController = ScrollController();

  final List<String> negativeImpacts = [
    "High Caffeine: Can overstimulate the gut, increasing acid secretion and potentially worsening reflux or gastritis.",
    "Added Sugar and Cream: Many canned coffees contain sugar and dairy creamers, which can lead to bloating and poor gut microbiome balance.",
    "Acidity: Coffee is naturally acidic, which may irritate the stomach lining in sensitive individuals.",
    "Artificial Additives: Flavors and stabilizers may disrupt gut health in the long term.",
    "No Fiber: Lacks gut-supporting fiber and may crowd out more beneficial options if consumed frequently."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Canned Coffee (1 Mug)",
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
                  'assets5/images5/coffee.webp', // Replace with actual asset
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
                  'Nutrients per 1 Mug (~240 ml)',
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
                  DataColumn(label: Text('Amount per Mug')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text("80–120 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("10–18 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('8–15 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('2–5 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Caffeine')),
                    DataCell(Text('70–120 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('0 g')),
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
                  'Effects of coffee',
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
