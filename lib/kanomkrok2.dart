import 'package:flutter/material.dart';

class kanomkrok2 extends StatefulWidget {
  const kanomkrok2({super.key});

  @override
  State<kanomkrok2> createState() => _kanomkrok2State();
}

class _kanomkrok2State extends State<kanomkrok2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Made with coconut milk, rice flour, and sugar—each portion is calorie-dense.",
    "Rich in saturated fat: Coconut milk contains high levels of saturated fat, which can promote fat storage if consumed in excess.",
    "Sugary profile: Often sweetened, contributing to a high glycemic load that may increase hunger shortly after.",
    "Low fiber: Lack of fiber means lower satiety, leading to the risk of overeating.",
    "Portion control is difficult: Served in small pieces that are easy to overconsume without realizing total intake.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kanom Krok",
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
                  'assets6/images6/coco.jpg', // <- Replace with your image path
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
                  'Nutrients per 6 pieces (1 portion)',
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
                  DataColumn(label: Text('Amount per portion')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text("350-450 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("45-55 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('3-5 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre')),
                    DataCell(Text('1-2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fats')),
                    DataCell(Text('20-30 g')),
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
                  'Effects of Kanom Krok:',
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
