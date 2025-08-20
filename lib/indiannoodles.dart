import 'package:flutter/material.dart';

class NoodlesPCOS1 extends StatefulWidget {
  const NoodlesPCOS1({super.key});

  @override
  State<NoodlesPCOS1> createState() => _NoodlesPCOS1State();
}

class _NoodlesPCOS1State extends State<NoodlesPCOS1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Flour: Most noodles are made from maida, which spikes blood sugar and worsens insulin resistance.",
    "Low in Fiber: Lacks dietary fiber, leading to poor digestion and increased hunger.",
    "Processed Ingredients: Often includes preservatives and additives that may affect hormonal balance.",
    "High Glycemic Index: Causes rapid insulin spikes, which can exacerbate PCOS symptoms.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Noodles',
          style: TextStyle(
            fontSize: width * 0.08,
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
                padding: EdgeInsets.only(top: height * 0.02),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.025),
                    child: Image.asset(
                      'assets2/images2/images-11.jpeg', // Ensure this path is valid
                      height: height * 0.32,
                      width: width * 0.45,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: EdgeInsets.only(left: width * 0.035),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 100gm',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: width * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(width * 0.012),
                ),
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Nutrients', style: TextStyle(fontSize: width * 0.038))),
                    DataColumn(label: Text('Values', style: TextStyle(fontSize: width * 0.038))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('350 kcal', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('55 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('8 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('5 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fibre', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('2 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: EdgeInsets.only(left: width * 0.035),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Noodles',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: width * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
