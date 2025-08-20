import 'package:flutter/material.dart';

class MatchaGlass extends StatefulWidget {
  const MatchaGlass({super.key});

  @override
  State<MatchaGlass> createState() => _MatchaGlassState();
}

class _MatchaGlassState extends State<MatchaGlass> {
  final ScrollController _scrollController = ScrollController();

  final List<String> negativeImpacts = [
    "Caffeine Content: One glass of matcha contains about 70–80 mg of caffeine, which can increase stomach acid and cause reflux or discomfort in sensitive individuals.",
    "May Cause Nausea on Empty Stomach: Matcha is high in catechins, which can irritate the stomach lining and trigger nausea when consumed without food.",
    "Oxalate Content: Matcha is high in oxalates, which can interfere with calcium absorption and affect gut mineral balance.",
    "May Aggravate IBS: In some people, caffeine acts as a gut stimulant, leading to cramps, diarrhea, or bloating.",
    "Laxative Effect in High Doses: Strong or multiple servings may lead to loose stools in sensitive individuals."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Matcha",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.green.shade900,
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
                  'assets5/images5/matcha.webp', // Update with your image asset
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
                  'Nutrients per 1 Glass',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade900,
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
                  DataColumn(label: Text('Amount per Glass')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text("25–40 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("3–5 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('1–2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('0.5–1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Caffeine')),
                    DataCell(Text('70–80 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('1–2 g')),
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
                  'Effects of Matcha Latte',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green.shade900,
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
