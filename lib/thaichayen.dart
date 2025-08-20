import 'package:flutter/material.dart';

class ChaYena extends StatefulWidget {
  const ChaYena({super.key});

  @override
  State<ChaYena> createState() => _ChaYenaState();
}

class _ChaYenaState extends State<ChaYena> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Glycemic Index: Contains sweetened condensed milk and sugar syrup, causing rapid blood sugar spikes.",
    "Liquid Calories: Easy to consume large quantities quickly, leading to excess sugar intake.",
    "Low Nutrient Value: High in sugar and fat, but offers little nutritional benefit for diabetics.",
    "Weight Gain Risk: Frequent consumption adds extra calories, contributing to insulin resistance.",
    "Poor Blood Sugar Control: Regular intake makes glucose management harder for diabetic individuals.",
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery values for responsiveness
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cha Yen',
          style: TextStyle(
            fontSize: height * 0.03, // Responsive font size
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.015),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    child: Image.asset(
                      'assets6/images6/yen.jpeg',
                      height: height * 0.3,
                      width: width * 0.6,// Responsive image width
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per glass (~250 ml)',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.025,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(width * 0.02),
                ),
                child: DataTable(
                  columnSpacing: width * 0.1,
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: height * 0.022),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: height * 0.022),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: height * 0.02))),
                      DataCell(Text('250–350 kcal', style: TextStyle(fontSize: height * 0.02))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar', style: TextStyle(fontSize: height * 0.02))),
                      DataCell(Text('20–35 g', style: TextStyle(fontSize: height * 0.02))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: height * 0.02))),
                      DataCell(Text('8–12 g', style: TextStyle(fontSize: height * 0.02))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Saturated Fat', style: TextStyle(fontSize: height * 0.02))),
                      DataCell(Text('5–8 g', style: TextStyle(fontSize: height * 0.02))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: height * 0.02))),
                      DataCell(Text('3–5 g', style: TextStyle(fontSize: height * 0.02))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: height * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Why It’s Harmful for Diabetes',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.025,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: height * 0.02),
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
