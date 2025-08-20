import 'package:flutter/material.dart';

class Pocky extends StatefulWidget {
  const Pocky({super.key});

  @override
  State<Pocky> createState() => _PockyState();
}

class _PockyState extends State<Pocky> {
  final ScrollController _scrollController = ScrollController();

  final List<String> negativeImpacts = [
    "High in Sugar: Pocky contains a significant amount of sugar, which can lead to blood sugar spikes, insulin resistance, and digestive discomfort.",
    "Refined Carbohydrates: The biscuits are made from refined flour, which lacks fiber and can cause bloating, indigestion, and slow digestion.",
    "Artificial Additives: Many Pocky varieties contain artificial flavorings, colors, and preservatives, which can irritate the gut lining and disrupt gut microbiota.",
    "Low in Nutrients: As a highly processed snack, Pocky offers little to no nutritional value, providing empty calories that can negatively affect overall gut health.",
    "High in Saturated Fat: Some varieties of Pocky contain unhealthy fats, which can slow digestion and lead to bloating or discomfort in the gut."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pocky",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.pink.shade700,
          ),
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
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/pocky.jpg', // Ensure this image exists
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
                  'Nutrients per 1 piece',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.pink.shade700,
                  ),
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
                  DataColumn(label: Text('Amount per 1 piece')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text("10–15 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("2–3 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('0.5–1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('0 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('1–5 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('0 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  'Effects of Pocky ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink.shade700,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              itemCount: negativeImpacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(negativeImpacts[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
