import 'package:flutter/material.dart';

class chaoThaiVodka extends StatefulWidget {
  const chaoThaiVodka({super.key});

  @override
  State<chaoThaiVodka> createState() => _chaoThaiVodkaState();
}

class _chaoThaiVodkaState extends State<chaoThaiVodka> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High alcohol content: The high alcohol levels in Chao Thai Vodka can interfere with insulin action, leading to poor blood sugar control.",
    "High Glycemic Index: Chao Thai Vodka often has added sugar, which can cause rapid blood sugar spikes.",
    "Increases Insulin Resistance: Regular consumption of high-sugar, high-alcohol beverages like Chao Thai Vodka can contribute to insulin resistance over time.",
    "Empty Calories: Chao Thai Vodka provides a significant number of calories with little to no nutritional value, making it harder to manage weight and blood sugar levels."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chao Thai Vodka",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.green.shade800)),
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
                    'assets6/images6/vodka.jpg', // Replace with actual image path
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
                  child: Text('Nutrients per 1 Glass (approx. 30ml)',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
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
                    DataColumn(label: Text('Amount')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Calories')),
                      DataCell(Text("70 kcal")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("0 g")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('0 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fats')),
                      DataCell(Text('0 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium')),
                      DataCell(Text('0 mg')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Effects on Diabetes:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
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
                  })
            ],
          ),
        ));
  }
}
