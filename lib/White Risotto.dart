import 'package:flutter/material.dart';

class whiterisotto extends StatefulWidget {
  const whiterisotto({super.key});

  @override
  State<whiterisotto> createState() => _whiterisottoState();
}

class _whiterisottoState extends State<whiterisotto> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbohydrates: White risotto is typically made from refined white rice, which has a high glycemic index and spikes blood sugar, worsening insulin resistance in PCOS.",
    "Low Fiber: White rice is stripped of its fiber, leading to slower digestion and a lack of the beneficial gut effects necessary for managing PCOS.",
    "High Glycemic Load: As a high-GI food, white risotto increases the likelihood of blood sugar imbalances, which can worsen PCOS symptoms, such as fatigue and weight gain.",
    "Saturated Fats: Traditional risotto recipes often include butter or cream, contributing to high saturated fat intake, which can increase inflammation and worsen hormonal imbalances.",
    "Lack of Protein: White risotto generally lacks protein, which is essential for stabilizing blood sugar levels and balancing hormones in individuals with PCOS."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'White Risotto',
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
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets10/images10/b.jpg',
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
                  'Nutrients per 1 serving',
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
                  DataCell(Text('350–450 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('60–70 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('6–8 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('12–18 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fibre')),
                  DataCell(Text('1–2 g')),
                ]),
              ]),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of White Risotto ',
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
