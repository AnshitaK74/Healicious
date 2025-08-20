import 'package:flutter/material.dart';

class maidaaa extends StatefulWidget {
  const maidaaa({super.key});

  @override
  State<maidaaa> createState() => _maidaaaState();
}

class _maidaaaState extends State<maidaaa> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Glycemic Index: Maida causes a rapid spike in blood sugar.",
    "Low in Fiber: It lacks fiber, worsening glucose control and digestion.",
    "Processed Carb: Overconsumption contributes to insulin resistance.",
    "Hidden in Common Foods: Used in breads, biscuits, samosas, noodles.",
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Maida',
          style: TextStyle(
            fontSize: w * 0.07,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(w * 0.04),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: h * 0.02),
                child: Card(
                  elevation: h * 0.01,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(w * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(w * 0.025),
                    child: Image.asset(
                      'assets20/images20/miada.jpeg', // Replace with maida image
                      height: h * 0.3,
                      width: w * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.04),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 100g',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: w * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.03),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: w * 0.003),
                  borderRadius: BorderRadius.circular(w * 0.02),
                ),
                child: DataTable(
                  columnSpacing: w * 0.04,
                  dataRowMinHeight: h * 0.045,
                  columns: [
                    DataColumn(label: Text('Nutrients', style: TextStyle(fontSize: w * 0.04))),
                    DataColumn(label: Text('Values', style: TextStyle(fontSize: w * 0.04))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('364 kcal', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('76 g', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('0.3 g', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('10 g', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('2.7 g', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: h * 0.03),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Maida',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: w * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.01),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: h * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: w * 0.04),
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
