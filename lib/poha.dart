import 'package:flutter/material.dart';

class poha extends StatefulWidget {
  const poha({super.key});

  @override
  State<poha> createState() => _pohaState();
}

class _pohaState extends State<poha> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Moderate Glycemic Index: Poha can cause a moderate rise in blood sugar if portion size is not controlled.",
    "Low Fiber: Traditional white poha lacks fiber, which slows glucose absorption.",
    "Processed Carb: Flattened rice is still a refined carbohydrate that can impact glucose levels if consumed frequently.",
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Poha',
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
                      'assets20/images20/poha.jpeg', // Replace with poha image
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
                    'Nutrients per 1 bowl',
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
                      DataCell(Text('180–220 kcal', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('30–35 g', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('1–2 g', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Cholestrol', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('0 mg', style: TextStyle(fontSize: w * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Total Fat', style: TextStyle(fontSize: w * 0.038))),
                      DataCell(Text('5–7 g', style: TextStyle(fontSize: w * 0.038))),
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
                    'Effect of Poha',
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
