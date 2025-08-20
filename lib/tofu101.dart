import 'package:flutter/material.dart';

class TofuPCOS extends StatefulWidget {
  const TofuPCOS({super.key});

  @override
  State<TofuPCOS> createState() => _TofuPCOSState();
}

class _TofuPCOSState extends State<TofuPCOS> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Balances Hormones: Tofu contains phytoestrogens which may help regulate estrogen levels and reduce PCOS symptoms.",
    "Improves Insulin Sensitivity: High in protein and low in carbohydrates, tofu can help manage blood sugar and insulin levels.",
    "Supports Weight Management: Being low in calories and high in protein, it promotes satiety and reduces overeating.",
    "Anti-inflammatory: Tofu contains antioxidants and plant compounds that help reduce inflammation linked to PCOS.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tofu',
          style: TextStyle(
            fontSize: width * 0.08,  // Responsive font size
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
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
                    'assets2/images2/tofu.jpg', // Update with actual tofu image
                    height: height * 0.31,
                    width: width * 0.53,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.035),
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
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
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
                    DataCell(Text('76 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1.9 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('8.1 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('4.8 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0.3 g', style: TextStyle(fontSize: width * 0.035))),
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
                  'Effect of Tofu',
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
            ),
          ],
        ),
      ),
    );
  }
}
