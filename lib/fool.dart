import 'package:flutter/material.dart';

class khaonieuw extends StatefulWidget {
  const khaonieuw({super.key});

  @override
  State<khaonieuw> createState() => _khaonieuwState();
}

class _khaonieuwState extends State<khaonieuw> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Low in Fiber: Sticky rice is low in fiber, which is important for gut health. Without sufficient fiber, it can contribute to constipation or irregular bowel movements.",
    "High Glycemic Index: Sticky rice has a high glycemic index, which can cause rapid spikes in blood sugar. This can have negative impacts on gut bacteria balance and metabolism over time.",
    "Can Cause Bloating: Due to its sticky texture and carbohydrate content, excessive consumption of Khao Niew can cause bloating or discomfort in individuals with sensitive digestive systems.",
    "Gut Flora Imbalance: Sticky rice, being a simple carb, can lead to imbalanced gut flora if consumed in large quantities, as it provides a quick sugar source for bad bacteria."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Khao Niew (Sticky Rice)',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800),
          ),
        ),
        body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets5/images5/khaonieuw.jpg', // Use your image path
                        height: 250,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nutrients per 1 bowl',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.green.shade800),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black), // Outline border
                    borderRadius: BorderRadius.circular(5), // Optional: Rounded corners
                  ),
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Nutrient')),
                      DataColumn(label: Text('Amount per 1 bowl')),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('Calories')),
                        DataCell(Text('200–250 kcal')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Carbohydrates')),
                        DataCell(Text('45–50 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Protein')),
                        DataCell(Text('4–5 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fat')),
                        DataCell(Text('0–1 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fiber')),
                        DataCell(Text('1–2 g')),
                      ])
                    ],
                  ),
                ),
                SizedBox(height: 28),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Impact of Khao Niew on Gut Health',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.green.shade800),
                    ),
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
            )));
  }
}
