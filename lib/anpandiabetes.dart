import 'package:flutter/material.dart';

class Anpan11 extends StatefulWidget {
  const Anpan11({super.key});

  @override
  State<Anpan11> createState() => _Anpan11State();
}

class _Anpan11State extends State<Anpan11> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Sugar Content: The sweet red bean paste filling and enriched dough make anpan high in added sugars, leading to rapid blood sugar spikes.",
    "Refined Flour: Made from white flour, which is rapidly digested and contributes to high glycemic index.",
    "Low Fiber: Anpan lacks dietary fiber, leading to poor blood glucose regulation and increased hunger.",
    "Hidden Calories: Though small, it is calorie dense and easy to overconsume, which can worsen glycemic control.",
    "Insulin Spikes: Frequent consumption causes frequent insulin release, contributing to insulin resistance over time."
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Anpan',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // responsive
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.018),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.025), // responsive radius
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets5/images5/anpan.jpeg',
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.55,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 bun (70g)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(screenWidth * 0.013),
                ),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('200–250 kcal',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('35–40 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('1–2 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('4–6 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('4–6 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('14–18 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Anpan',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(screenWidth * 0.025),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
