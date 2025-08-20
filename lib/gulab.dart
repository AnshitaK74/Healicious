import 'package:flutter/material.dart';

class gulab extends StatefulWidget {
  const gulab({super.key});

  @override
  State<gulab> createState() => _gulabState();
}

class _gulabState extends State<gulab> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Very High in Sugar: Gulab jamun is soaked in sugar syrup, causing rapid spikes in blood glucose levels.",
    "High Glycemic Load: The sugar and refined carbs elevate insulin quickly, making blood sugar control harder.",
    "Worsens Insulin Resistance: Regular consumption may increase insulin resistance, a major issue in diabetes management.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gulab Jamun',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green.shade800),
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
                    'assets2/images2/gulab.jpg',
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
                  'Nutrients per 1 piece',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),
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
                    DataCell(Text('150–200 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('25–30 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('20–25 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Cholestrol')),
                    DataCell(Text('15–25 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total Fat')),
                    DataCell(Text('7–10 g')),
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
                  'Effect of Gulab jamun',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),
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
