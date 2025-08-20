import 'package:flutter/material.dart';

class namManaoSod extends StatefulWidget {
  const namManaoSod({super.key});

  @override
  State<namManaoSod> createState() => _namManaoSodState();
}

class _namManaoSodState extends State<namManaoSod> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in added sugar: Sweetened lime soda can cause blood sugar spikes.",
    "Raises insulin levels: High sugar content increases insulin secretion, leading to insulin resistance over time.",
    "May cause weight gain: High in empty calories from sugar, contributing to weight gain, a risk factor for Type 2 diabetes.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nam Manao Sod ",
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
                    'assets6/images6/limesoda.jpeg', // Replace with your image path
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
                  child: Text('Nutrients per 1 glass (approx. 250 ml)',
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
                      DataCell(Text("150–200 kcal")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("40–50 g")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('40–50 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium')),
                      DataCell(Text('10–20 mg')),
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
