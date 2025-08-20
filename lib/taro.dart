import 'package:flutter/material.dart';

class TaroMilkTea extends StatefulWidget {
  const TaroMilkTea({super.key});

  @override
  State<TaroMilkTea> createState() => _TaroMilkTeaState();
}

class _TaroMilkTeaState extends State<TaroMilkTea> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in sugar: Taro milk tea is typically sweetened with syrups or sugar, leading to rapid blood sugar spikes.",
    "Calorie-dense: The combination of sugar and milk makes taro milk tea a calorie-rich drink, which can contribute to weight gain and difficulty managing diabetes.",
    "Taro powder may contain additives: Some versions of taro milk tea use processed taro powder, which may contain added sugars or preservatives that can affect blood sugar.",
    "Low in fiber: While taro root itself has some fiber, most taro milk teas lack significant fiber content, which helps slow down sugar absorption.",
    "High glycemic index: The sugar content, combined with the milk, makes taro milk tea high on the glycemic index, leading to rapid increases in blood sugar levels.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TARO MILK TEA',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade800,
              fontSize: 28),
        ),
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
                  'assets3/images4/taromilktea.webp', // Update path as needed
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nutrients per 1 glass (approx.)',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.orange.shade800)),
              ),
            ),
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
                    DataCell(Text('200–350 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('40–50 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('2–5 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('50–100 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('5–10 g')),
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
                  'Negative Effects on Diabetes',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.orange.shade800),
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
                    leading: Icon(Icons.warning_amber_rounded,
                        color: Colors.orange),
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
