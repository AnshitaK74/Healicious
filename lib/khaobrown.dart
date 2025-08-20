import 'package:flutter/material.dart';

class KhaoBrown extends StatefulWidget {
  const KhaoBrown({super.key});

  @override
  State<KhaoBrown> createState() => _KhaoBrownState();
}

class _KhaoBrownState extends State<KhaoBrown> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Low Glycemic Index: Brown rice has a lower glycemic index compared to white rice, which means it causes a slower, more controlled rise in blood sugar levels.",
    "Rich in Fiber: Brown rice contains more fiber than white rice, which helps regulate blood sugar and improve insulin sensitivity.",
    "Good Source of Magnesium: Magnesium, found in brown rice, is important for insulin function, and deficiencies have been linked to higher risk of type 2 diabetes.",
    "Supports Healthy Digestion: The fiber content in brown rice aids digestion, preventing constipation and promoting gut health.",
    "Helps with Weight Management: Due to its fiber content, brown rice makes you feel fuller for longer, which can help with weight management—important for controlling diabetes."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Khao Brown (Brown Rice)",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/khaobrown.jpg', // Replace with the actual image path for Khao Brown
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Nutrition per 1 plate',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Nutrient')),
                  DataColumn(label: Text('Amount')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text("215 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("45 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('5 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total Fat')),
                    DataCell(Text('2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('4 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('5 mg')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Effects on Diabetes:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(impacts[index]),
                  );
                })
          ],
        ),
      ),
    );
  }
}
