import 'package:flutter/material.dart';

class MitsuyaCider extends StatefulWidget {
  const MitsuyaCider({super.key});

  @override
  State<MitsuyaCider> createState() => _MitsuyaCiderState();
}

class _MitsuyaCiderState extends State<MitsuyaCider> {
  final ScrollController _scrollController = ScrollController();

  final List<String> negativeImpacts = [
    "High Sugar Content: Can spike blood sugar, disrupt gut microbiota, and promote inflammation or bloating.",
    "Carbonation: Increases gas and bloating, especially problematic for individuals with IBS or reflux.",
    "Artificial Flavoring: May irritate sensitive guts or trigger intolerance reactions.",
    "No Fiber: Lacks fiber, which supports healthy digestion and gut motility.",
    "Acidity: Can weaken stomach lining and worsen symptoms of gastritis or acid reflux."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mitsuya Cider (1 Glass)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.blueGrey.shade700,
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
                  'assets5/images5/cider.jpg', // Replace with actual image asset
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
                  'Nutrients per 1 Glass',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.blueGrey.shade700,
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
                  DataColumn(label: Text('Amount per Glass')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text("110–130 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("27–32 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('27–30 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('5–15 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Caffeine')),
                    DataCell(Text('0 mg')),
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
                  'Negative Effects on Gut Health',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey.shade700,
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
