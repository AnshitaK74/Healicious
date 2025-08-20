import 'package:flutter/material.dart';

class beer100 extends StatefulWidget {
  const beer100({super.key});

  @override
  State<beer100> createState() => _beer100State();
}

class _beer100State extends State<beer100> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Disrupts Gut Microbiota: Alcohol alters the balance of good and bad gut bacteria, which can lead to dysbiosis and inflammation.",
    "Increases Intestinal Permeability: Known as 'leaky gut,' alcohol weakens the intestinal barrier, allowing toxins to enter the bloodstream.",
    "Promotes Inflammation: Ethanol and its byproducts promote oxidative stress and gut inflammation, contributing to chronic digestive issues.",
    "Reduces Nutrient Absorption: Regular alcohol intake impairs the absorption of essential nutrients that support gut and overall health.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Beer",
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
            SizedBox(height: 20),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/thaialcohol.jpeg', // Ensure this image exists
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
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Nutrients per 1 glass (approx.)',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800),
                ),
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
                  DataColumn(label: Text('Amount per glass')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text("100–150 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("5–10 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('5–20 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('0 g')),
                  ])
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Effects of Beer',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    title: Text(impacts[index]),
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
