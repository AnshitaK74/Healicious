import 'package:flutter/material.dart';

class Mekhong extends StatefulWidget {
  const Mekhong({super.key});

  @override
  State<Mekhong> createState() => _MekhongState();
}

class _MekhongState extends State<Mekhong> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High alcohol content: The alcohol in Mekhong can increase blood sugar levels, especially when consumed in large amounts, leading to poor diabetes management.",
    "Contains added sugars: Mekhong has added sugars that can cause rapid blood sugar spikes, making it a poor choice for diabetics.",
    "Empty Calories: Similar to other alcohols, Mekhong provides high calories with no nutritional value, contributing to weight gain and insulin resistance.",
    "Affects liver function: Excessive alcohol like Mekhong can impair liver function, which plays a key role in glucose regulation.",
    "Increases risk of hypoglycemia: Alcohol, particularly in combination with diabetes medications, can lead to dangerously low blood sugar levels if not monitored."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mekhong",
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
                    'assets20/images20/mekhong.jpeg', // Replace with actual image path
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
                      DataCell(Text("100 kcal")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("5 g")),
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
                      DataCell(Text('5 mg')),
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
