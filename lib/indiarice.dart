import 'package:flutter/material.dart';

class riceq extends StatefulWidget {
  const riceq({super.key});

  @override
  State<riceq> createState() => _riceqState();
}

class _riceqState extends State<riceq> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Glycemic Index: White rice rapidly raises blood sugar levels, leading to glucose spikes.",
    "Low in Fiber: Lacks dietary fiber which is crucial for slowing down sugar absorption.",
    "Promotes Insulin Resistance: Regular consumption can contribute to insulin insensitivity over time.",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'White Rice',
          style: TextStyle(
            fontSize: screenWidth * 0.07,
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
                padding: EdgeInsets.only(top: screenHeight * 0.02),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets20/images20/rice.jpeg',
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.03),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 1 bowl',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DataTable(
                  columnSpacing: screenWidth * 0.04,
                  columns: const [
                    DataColumn(label: Text('Nutrients')),
                    DataColumn(label: Text('Values')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Calories')),
                      DataCell(Text('200–240 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('45–53 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('0.1 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Cholestrol')),
                      DataCell(Text('0 mg')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Total Fat')),
                      DataCell(Text('0.4 g')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.03),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of White Rice',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
