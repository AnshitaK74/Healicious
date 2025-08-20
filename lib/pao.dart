import 'package:flutter/material.dart';

class PlaPao extends StatefulWidget {
  const PlaPao({super.key});

  @override
  State<PlaPao> createState() => _PlaPaoState();
}

class _PlaPaoState extends State<PlaPao> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Protein: Pla Pao is a rich source of lean protein, which helps in maintaining muscle mass and stabilizing blood sugar levels.",
    "Low in Carbohydrates: This dish is low in carbs, making it suitable for people with diabetes as it helps in preventing blood sugar spikes.",
    "Rich in Omega-3 Fatty Acids: Omega-3s in the fish are beneficial for reducing inflammation and improving cardiovascular health.",
    "Rich in Micronutrients: Grilled fish provides essential vitamins and minerals like vitamin D, B12, and selenium, supporting overall health.",
    "Supports Healthy Digestion: Pla Pao often includes herbs like lemongrass and kaffir lime leaves, which can aid digestion and boost the immune system."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pla Pao (Grilled Fish)",
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
                  'assets/images/pla_pao.jpg', // Replace with actual image path for Pla Pao
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
                child: Text('Nutrition per 1 piece',
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
                    DataCell(Text("160 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text("20 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total Fat')),
                    DataCell(Text('7 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('200 mg')),
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
