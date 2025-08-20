import 'package:flutter/material.dart';

class InstantNoodles extends StatefulWidget {
  const InstantNoodles({super.key});

  @override
  State<InstantNoodles> createState() => _InstantNoodlesState();
}

class _InstantNoodlesState extends State<InstantNoodles> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in sodium: Packaged seasoning contains over 1000 mg of sodium, which can increase blood pressure and water retention.",
    "Low in fiber: Lacks fiber, which is essential for gut health and satiety — may lead to overeating.",
    "Refined carbs: Made from refined wheat flour, quickly spikes blood sugar, promoting fat storage.",
    "Contains preservatives and additives: May irritate the gut lining and disrupt gut flora.",
    "Trans fats: Some variants use partially hydrogenated oils, which are harmful for heart and metabolic health."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INSTANT NOODLES',
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
                  'assets3/images4/instant_noodles.jpg',
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
                child: Text('Nutrients per pack (70–85g)',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.green.shade800)),
              ),
            ),
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
                  DataCell(Text('350–400 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('50–55 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('6–8 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('14–18 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sodium')),
                  DataCell(Text('1000–1800 mg')),
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
