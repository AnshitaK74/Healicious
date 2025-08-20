import 'package:flutter/material.dart';

class ThaiMilkShakeq extends StatefulWidget {
  const ThaiMilkShakeq({super.key});

  @override
  State<ThaiMilkShakeq> createState() => _ThaiMilkShakeqState();
}

class _ThaiMilkShakeqState extends State<ThaiMilkShakeq> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Blood Sugar Spikes: Thai milk shakes often contain sweetened condensed milk, ice cream, and syrups that cause rapid spikes in blood glucose levels.",
    "Weight Gain: These shakes are calorie-dense and high in sugar and fat, contributing to weight gain, which worsens insulin resistance.",
    "Insulin Resistance: Excess sugar and saturated fat from full-fat milk and ice cream can lead to chronic insulin resistance.",
    "Low Satiety: High sugar content leads to rapid digestion and low satiety, encouraging overconsumption of calories.",
    "Fatty Liver Risk: Frequent consumption can lead to increased fat accumulation in the liver, a common diabetes complication.",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thai Milk Shake',
          style: TextStyle(
            fontSize: width * 0.075,
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
            SizedBox(height: height * 0.02),

            /// IMAGE CARD
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Image.asset(
                  'assets20/images20/img_3.png', // replace with correct path
                  height: height * 0.3,
                  width: width * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.035),

            /// NUTRIENTS TITLE
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nutrients per serving',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.025),

            /// NUTRIENT TABLE
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(width * 0.015),
              ),
              child: DataTable(
                columnSpacing: width * 0.04,
                columns: [
                  DataColumn(
                    label: Text('Nutrient', style: TextStyle(fontSize: width * 0.04)),
                  ),
                  DataColumn(
                    label: Text('Amount', style: TextStyle(fontSize: width * 0.04)),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('300–450 kcal', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('25–40 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('10–18 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Saturated Fat', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('6–10 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: width * 0.035))),
                    DataCell(Text('4–6 g', style: TextStyle(fontSize: width * 0.035))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: height * 0.035),

            /// EFFECTS TITLE
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Why It’s Harmful for Diabetes',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),

            /// EFFECTS LIST
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
