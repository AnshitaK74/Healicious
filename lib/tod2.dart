import 'package:flutter/material.dart';

class todMunGoong extends StatefulWidget {
  const todMunGoong({super.key});

  @override
  State<todMunGoong> createState() => _todMunGoongState();
}

class _todMunGoongState extends State<todMunGoong> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "🍤 High in Oil: Deep-fried shrimp cakes absorb significant oil, increasing overall fat and calorie load.",
    "🧂 High Sodium: Usually contains fish sauce or soy sauce, contributing to water retention and higher blood pressure.",
    "⚠️ Low Fiber: Lacks vegetables or whole grains, leading to poor satiety and overeating risk.",
    "🔥 Inflammation Risk: Fried seafood combined with refined flours can worsen chronic inflammation linked with obesity.",
    "🍽️ Overeating Trigger: Crunchy texture and salty flavor make it easy to consume in excess before feeling full."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tod Mun Goong",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
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
                  'assets2/images2/todmung.jpg', // Replace with correct asset path
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
                child: Text('Nutrients per 1 piece',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800,
                        fontSize: 20)),
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
                    DataCell(Text("180-200 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("10-12 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('8-10 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre')),
                    DataCell(Text('0.5-1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fats')),
                    DataCell(Text('12-15 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('300-400 mg')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Effects of Tod Mun Goong:',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800,
                        fontSize: 20)),
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
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Text(
                "✅ Healthier swap: Steamed shrimp dumplings or grilled prawn skewers with lemon and herbs.",
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
