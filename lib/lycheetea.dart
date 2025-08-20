import 'package:flutter/material.dart';

class LycheeIcedTea extends StatefulWidget {
  const LycheeIcedTea({super.key});

  @override
  State<LycheeIcedTea> createState() => _LycheeIcedTeaState();
}

class _LycheeIcedTeaState extends State<LycheeIcedTea> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in sugar: Lychee iced tea is often sweetened with syrups or sugar, which can cause a rapid increase in blood sugar levels.",
    "Calories: The added sugar and sweeteners make the drink calorie-dense, which can contribute to weight gain, negatively impacting diabetes control.",
    "May have artificial sweeteners: Some versions of lychee iced tea may contain artificial sweeteners or preservatives that could affect gut health or insulin sensitivity.",
    "Low in nutritional value: Lychee iced tea lacks substantial nutritional value aside from sugar, making it a poor choice for diabetics seeking more nutrient-dense beverages.",
    "High glycemic index: The combination of sugar and the fruit can create a high glycemic index, leading to quick spikes in blood sugar.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LYCHEE ICED TEA',
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
                  'assets3/images4/lycheeicedtea.webp', // Update path as needed
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
                    DataCell(Text('150–200 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('35–45 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('0–1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('20–50 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('0–2 g')),
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
