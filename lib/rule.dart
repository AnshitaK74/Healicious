import 'package:flutter/material.dart';

class RamenBowl extends StatefulWidget {
  const RamenBowl({super.key});

  @override
  State<RamenBowl> createState() => _RamenBowlState();
}

class _RamenBowlState extends State<RamenBowl> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High glycemic index: Refined noodles spike blood sugar quickly.",
    "Salty broth: Contains excessive sodium, which can worsen blood pressure and kidney health in diabetics.",
    "Low in fiber: Lacks whole grains and sufficient vegetables, reducing satiety and glucose control.",
    "High in saturated fat: Often includes fatty pork or fried toppings that promote insulin resistance.",
    "Hidden sugars: Some ramen broths and sauces may contain added sugars or starch thickeners.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ramen',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade700,
              fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets4/img4/bowl.jpeg', // Add this image path in assets
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nutrients per bowl',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.green.shade700)),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Nutrients')),
                  DataColumn(label: Text('Values')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calories')),
                    DataCell(Text('450–600 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('60–75 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('12–18 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('1500–2500 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('15–25 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Ramen',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade700),
                ),
              ),
            ),
            SizedBox(height: 10),
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
            )
          ]),
        ),
      ),
    );
  }
}
