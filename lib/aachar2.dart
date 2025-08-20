import 'package:flutter/material.dart';

class Aachar11 extends StatefulWidget {
  const Aachar11({super.key});

  @override
  State<Aachar11> createState() => _Aachar11State();
}

class _Aachar11State extends State<Aachar11> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Disrupts Gut Microbiome: High sodium levels in pickles can reduce beneficial gut bacteria, negatively impacting digestion and immunity.",
    "Increased Water Retention: Excess sodium may lead to bloating and water retention, causing discomfort in the gut.",
    "Triggers Inflammation: Preservatives and artificial additives used in pickles can cause gut inflammation in sensitive individuals.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aachar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: width * 0.075,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            SizedBox(height: height * 0.025),

            /// Image Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets2/images2/aachar.webp',
                  height: height * 0.31,
                  width: width * 0.53,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: height * 0.034),

            /// Nutrients Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 tbsp',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),

            SizedBox(height: height * 0.03),

            /// Nutrients Table
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(
                    label: Text('Nutrients', style: TextStyle(fontSize: width * 0.04)),
                  ),
                  DataColumn(
                    label: Text('Values', style: TextStyle(fontSize: width * 0.04)),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('20–45 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('800–1200 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('0–1.0 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1.5–6.5 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),

            SizedBox(height: height * 0.034),

            /// Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Aachar',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),

            SizedBox(height: height * 0.015),

            /// Effects List
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
