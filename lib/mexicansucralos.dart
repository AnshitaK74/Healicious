import 'package:flutter/material.dart';

class Sucralosee extends StatefulWidget {
  const Sucralosee({super.key});

  @override
  State<Sucralosee> createState() => _SucraloseeState();
}

class _SucraloseeState extends State<Sucralosee> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Reduces beneficial gut bacteria: Sucralose can significantly reduce good gut microbes like Lactobacillus and Bifidobacteria.",
    "Disrupts gut microbiota balance: Long-term use alters microbial diversity, potentially impairing digestion and immunity.",
    "May increase gut permeability: Some studies suggest sucralose might weaken gut lining integrity.",
    "Linked to inflammation: Chronic exposure may promote low-grade inflammation in the gut.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sucralose',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
              fontSize: width * 0.075),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            SizedBox(height: height * 0.025),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets8/images8/sucralose.png',
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.034),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 100g',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800),
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
                        'Property',
                        style: TextStyle(fontSize: width * 0.04),
                      )),
                  DataColumn(
                      label: Text(
                        'Value',
                        style: TextStyle(fontSize: width * 0.04),
                      )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 kcal',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sweetness',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('~600x sweeter than sugar',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein',
                        style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g',
                        style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Sucralose',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800),
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
    );
  }
}
