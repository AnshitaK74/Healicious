
import 'package:flutter/material.dart';

class okonomiyaki extends StatefulWidget {
  const okonomiyaki({super.key});

  @override
  State<okonomiyaki> createState() => _okonomiyakiState();
}

class _okonomiyakiState extends State<okonomiyaki> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Fat Content:Fried pork, mayo, and oil used in cooking can slow digestion and may worsen bloating, acid reflux, or diarrhea in sensitive individuals.",
    "Processed Sauces (Okonomiyaki Sauce, Mayonnaise):Often high in sodium, sugar, and additives (e.g., MSG) and these can disturb the gut microbiome or cause water retention and gas.",
    "High Sodium:Excess sodium can draw water into the gut, potentially leading to bloating and may worsen symptoms of IBS or water retention.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'okonomiyaki',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: width * 0.075, // responsive
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(width * 0.04), // responsive padding
          child: Column(
            children: [
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.025),
                  child: Image.asset(
                    'assets16/images16/oka.jpeg',
                    height: height * 0.31,
                    width: width * 0.53,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height * 0.034),
              Padding(
                padding: EdgeInsets.only(left: width * 0.045),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 1 piece',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: width * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.037),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(width * 0.015),
                ),
                child: DataTable(
                  columnSpacing: width * 0.04,
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('500–600 kcal', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('40–50 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('15–20 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('25–35 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fibre', style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('3–5 g', style: TextStyle(fontSize: width * 0.035))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: height * 0.034),
              Padding(
                padding: EdgeInsets.only(left: width * 0.045),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of okonomiyaki',
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
