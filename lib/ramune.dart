import 'package:flutter/material.dart';

class ramune extends StatefulWidget {
  const ramune({super.key});

  @override
  State<ramune> createState() => _ramuneState();
}

class _ramuneState extends State<ramune> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Liquid Calories: Because it’s a liquid, it doesn’t trigger the body’s fullness mechanisms effectively. You might end up drinking more calories than you realize, and these excess sugary calories are often stored as fat, leading to gradual weight gain.",
    "Insulin Resistance Over Time: Frequent consumption of sugary drinks like Ramune can lead to insulin resistance, where your cells no longer respond to insulin effectively. This results in higher insulin levels, which encourage more fat accumulation.",
    "Metabolic Effects: Regular intake of sugary drinks can disrupt metabolism over time, leading to an imbalance in energy regulation. This makes it harder to lose weight and easier to gain weight.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ramune Soda',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.075, // ~32 before
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.022), // ~18 before
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025), // ~10 before
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.025),
                  child: Image.asset(
                    'assets5/images5/ramune.webp',
                    height: height * 0.31, // ~250 before
                    width: width * 0.53,   // ~200 before
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.025), // ~20 before
            Padding(
              padding: EdgeInsets.only(left: width * 0.045), // ~18 before
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 glass',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05, // ~20 before
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.037), // ~30 before
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(width * 0.015), // ~5 before
              ),
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      'Nutrient',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount per 1 piece',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text('90–110 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('23–28 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('22–26 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.034), // ~28 before
            Padding(
              padding: EdgeInsets.only(left: width * 0.045), // ~18 before
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Ramune Soda',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.05, // ~20 before
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: height * 0.015), // ~12 before
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
