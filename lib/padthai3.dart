import 'package:flutter/material.dart';

class padthai3 extends StatefulWidget {
  const padthai3({super.key});

  @override
  State<padthai3> createState() => _padthai3State();
}

class _padthai3State extends State<padthai3> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Calorie dense: Pad Thai typically contains 400–600 kcal per plate, which can contribute to weight gain if eaten frequently.",
    "High in fats and carbs: The combination increases the risk of fat accumulation, especially visceral fat.",
    "Low satiety: Lack of fiber and protein may lead to overeating or snacking soon after.",
    "Frequent consumption: Regular intake of oily, sugary, high-carb meals like Pad Thai can slow down metabolism over time.",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pad Thai",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets20/images20/plmn.jpeg',
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
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Nutrients per 1 plate',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
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
                    DataCell(Text('Calories')),
                    DataCell(Text("400-600 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("50-65 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('12-18 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre')),
                    DataCell(Text('2-4 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fats')),
                    DataCell(Text('15-25 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Effects of Pad Thai:',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
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
            )
          ],
        ),
      ),
    );
  }
}
