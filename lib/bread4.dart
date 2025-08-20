import 'package:flutter/material.dart';

class breadx extends StatefulWidget {
  const breadx({super.key});

  @override
  State<breadx> createState() => _breadxState();
}

class _breadxState extends State<breadx> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Glycemic Index: White bread quickly raises blood glucose levels.",
    "Low Fiber: It’s low in fiber, which worsens blood sugar control.",
    "Made from Maida: Often made with refined flour, contributing to insulin resistance.",
    "Common in Breakfast: Regular intake leads to increased diabetes risk.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'White Bread',
          style: TextStyle(
            fontSize: width * 0.07,
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
                  elevation: height * 0.01,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.025),
                    child: Image.asset(
                      'assets20/images20/bread3.jpeg', // Replace with actual image path
                      height: height * 0.3,
                      width: width * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 100g',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: width * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: width * 0.003),
                  borderRadius: BorderRadius.circular(width * 0.02),
                ),
                child: DataTable(
                  columnSpacing: width * 0.04,
                  dataRowMinHeight: height * 0.045,
                  columns: [
                    DataColumn(label: Text('Nutrients', style: TextStyle(fontSize: width * 0.04))),
                    DataColumn(label: Text('Values', style: TextStyle(fontSize: width * 0.04))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.038))),
                      DataCell(Text('265 kcal', style: TextStyle(fontSize: width * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.038))),
                      DataCell(Text('49 g', style: TextStyle(fontSize: width * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.038))),
                      DataCell(Text('5 g', style: TextStyle(fontSize: width * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.038))),
                      DataCell(Text('9 g', style: TextStyle(fontSize: width * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.038))),
                      DataCell(Text('2.4 g', style: TextStyle(fontSize: width * 0.038))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of White Bread',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: width * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
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
                        style: TextStyle(fontSize: width * 0.04),
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
