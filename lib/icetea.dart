import 'package:flutter/material.dart';

class ThaiIcedTea extends StatefulWidget {
  const ThaiIcedTea({super.key});

  @override
  State<ThaiIcedTea> createState() => _ThaiIcedTeaState();
}

class _ThaiIcedTeaState extends State<ThaiIcedTea> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Loaded with sugar: Thai iced tea typically contains sweetened condensed milk and added sugar, which can cause rapid blood sugar spikes.",
    "High glycemic index: The sweet tea base has a high glycemic index, leading to poor glycemic control in diabetics.",
    "Liquid calories: It adds empty calories without satiety, increasing the risk of overeating.",
    "Contributes to insulin resistance: Regular consumption may worsen insulin sensitivity over time.",
    "Hidden fats: Condensed milk adds saturated fat, which may raise cholesterol and cardiovascular risk in diabetics.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thai Iced Tea',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: width * 0.075, // responsive
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.all(width * 0.04),
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
                  'assets20/images20/21.jpeg',
                  height: height * 0.30,
                  width: width * 0.55,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per 1 serving',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(width * 0.02),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(
                    label: Text(
                      'Nutrient',
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
                    DataCell(Text('200–300 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('35–45 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('2–4 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('60–100 mg', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('6–10 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effects of Thai Iced Tea',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
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
            )
          ],
        ),
      ),
    );
  }
}
