import 'package:flutter/material.dart';

class InstantMiso extends StatefulWidget {
  const InstantMiso({super.key});

  @override
  State<InstantMiso> createState() => _InstantMisoState();
}

class _InstantMisoState extends State<InstantMiso> {
  final ScrollController _scrollController = ScrollController();

  final List<String> negativeImpacts = [
    "High Sodium Content: Instant miso can contain 600–900 mg of sodium per bowl, which can contribute to bloating, water retention, and increased gut inflammation.",
    "Contains MSG or Flavor Enhancers: Common in instant versions to boost umami flavor; these can cause digestive sensitivity or discomfort in some individuals.",
    "Lack of Probiotics: Unlike traditionally fermented miso, the high-heat processing in instant versions kills beneficial bacteria that support gut health.",
    "Dehydrated Additives: Often includes dried tofu, seaweed, or green onion with preservatives, which may disrupt gut microbial balance.",
    "Low in Fiber: Instant miso soups usually lack fiber-rich vegetables or whole grains, leading to poor digestive motility."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instant Miso Soup",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.deepOrange.shade700,
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
                  'assets5/images5/miso.jpg', // Update to match your image
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
                  'Nutrients per 1 bowl',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.deepOrange.shade700,
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
                  DataColumn(label: Text('Amount per 1 bowl')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Calorie')),
                    DataCell(Text("35–60 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("3–5 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('1.5–3 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('0–1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('600–900 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('2–4 g')),
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
                  'Negative Effects on Gut Health',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange.shade700,
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
