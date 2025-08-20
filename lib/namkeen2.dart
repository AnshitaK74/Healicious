import 'package:flutter/material.dart';

class NamkeenInfoz extends StatefulWidget {
  const NamkeenInfoz({super.key});

  @override
  State<NamkeenInfoz> createState() => _NamkeenInfozState();
}

class _NamkeenInfozState extends State<NamkeenInfoz> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Gut Inflammation: Namkeen often contains fried ingredients and additives that can irritate the gut lining and promote inflammation.",
    "Poor Fiber Content: Most namkeen snacks lack dietary fiber, which can slow down digestion and harm gut microbiota balance.",
    "Excess Sodium: High salt content in namkeen may alter gut flora and increase the risk of bloating and water retention.",
    "Disruption of Good Bacteria: Preservatives and artificial flavors in packaged namkeen can negatively impact healthy gut bacteria.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Namkeen',
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
                  'assets20/images20/nam.jpeg',
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
                'Nutrients per pack (approx)',
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
                    DataCell(Text('400–500 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1000–1500 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('20–30 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('1–2 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),

            SizedBox(height: height * 0.034),

            /// Effects Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effect on Gut',
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
