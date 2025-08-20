import 'package:flutter/material.dart';

class bhajiya2 extends StatefulWidget {
  const bhajiya2({super.key});

  @override
  State<bhajiya2> createState() => _bhajiya2State();
}

class _bhajiya2State extends State<bhajiya2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    " Spices and Chutneys: Bhajiyas are usually spiced and eaten with chutneys, which can irritate the gut lining and increase acid production.",
    " Deep-Frying Overload: Bhajiyas are deep-fried, often in reused oil, which can slow down digestion and trigger bloating, gas, or acid reflux",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bhajiya',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: screenWidth * 0.08,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            children: [
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  child: Image.asset(
                    'assets3/imgaes4/bbb.jpeg',
                    height: screenHeight * 0.25,
                    width: screenWidth * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.035),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.035),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 1 plate',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(screenWidth * 0.015),
                ),
                child: DataTable(
                  columnSpacing: screenWidth * 0.1,
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
                      DataCell(Text('Calories', style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('350–450 kcal', style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('30–40 g', style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('6–8 g', style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium', style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('400–600 mg', style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('25–30 g', style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.035),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Bhajiya',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
