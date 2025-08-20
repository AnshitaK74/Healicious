import 'package:flutter/material.dart';

class AlooTikki extends StatefulWidget {
  const AlooTikki({super.key});

  @override
  State<AlooTikki> createState() => _AlooTikkiState();
}

class _AlooTikkiState extends State<AlooTikki> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Spicy and Tangy Add-ons: Toppings like chaat masala, chutneys, and green chilies can irritate the stomach lining, especially for people prone to gastritis or acid reflux.",
    "High in Refined Oil (if deep-fried): Fried foods can slow down digestion and cause bloating, gas, or acidity.",
    "Low in Fiber: Though made with potatoes (which have some fiber), Aloo Tikki is often low in roughage, especially when made without veggies or legumes and this can slow down bowel movements, making it a little constipating if eaten frequently.",
  ];

  @override
  Widget build(BuildContext context) {
    // Screen size variables
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aloo Tikki',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // ~32px on 400px wide screen
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
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets3/imgaes4/aloo.webp',
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5,
                      fit: BoxFit.cover,
                    ),
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
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: screenWidth * 0.038))),
                      DataCell(Text('450-700 kcal', style: TextStyle(fontSize: screenWidth * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: screenWidth * 0.038))),
                      DataCell(Text('50–70g', style: TextStyle(fontSize: screenWidth * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Cholesterol', style: TextStyle(fontSize: screenWidth * 0.038))),
                      DataCell(Text('20-30 mg', style: TextStyle(fontSize: screenWidth * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: screenWidth * 0.038))),
                      DataCell(Text('20–35g', style: TextStyle(fontSize: screenWidth * 0.038))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium', style: TextStyle(fontSize: screenWidth * 0.038))),
                      DataCell(Text('600-1000 mg', style: TextStyle(fontSize: screenWidth * 0.038))),
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
                    'Effect of Aloo Tikki',
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
                physics: const NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: screenWidth * 0.038),
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
