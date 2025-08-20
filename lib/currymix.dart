import 'package:flutter/material.dart';

class CurryMix extends StatefulWidget {
  const CurryMix({super.key});

  @override
  State<CurryMix> createState() => _CurryMixState();
}

class _CurryMixState extends State<CurryMix> {
  final ScrollController _scrollController = ScrollController();

  final List<String> negativeImpacts = [
    "High in Sodium: Pre-packaged curry mixes often contain 800–1200 mg sodium per serving, which can lead to water retention, bloating, and increased gut inflammation.",
    "Artificial Thickeners & Flavor Enhancers: These include monosodium glutamate (MSG) and modified starches that may irritate the gut lining, especially in sensitive individuals.",
    "Low in Fiber: Curry mixes are typically served with white rice and contain minimal vegetables, leading to poor gut motility and sluggish digestion.",
    "High in Refined Carbohydrates: The curry is often paired with white rice, which can cause blood sugar spikes and feed harmful gut bacteria.",
    "Preservatives & Additives: Synthetic preservatives used in packaged curry can disrupt the gut microbiome and contribute to digestive discomfort or imbalance."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pre-Packaged Curry Mix",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.brown.shade700,
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
                  'assets5/images5/mix.jpeg', // Ensure this image exists
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
                    color: Colors.brown.shade700,
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
                    DataCell(Text("250–400 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("35–50 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('12–20 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('1–2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('800–1200 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('5–10 g')),
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
                    color: Colors.brown.shade700,
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
