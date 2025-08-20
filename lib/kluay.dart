import 'package:flutter/material.dart';

class kluay extends StatefulWidget {
  const kluay({super.key});

  @override
  State<kluay> createState() => _kluayState();
}

class _kluayState extends State<kluay> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "🍟 High in Saturated Fats: Deep frying in reused oil increases trans fats and total calories.",
    "📈 Blood Sugar Spikes: Bananas are already high GI; frying them increases sugar absorption and promotes fat storage.",
    "🥄 Hidden Sugars: Often coated in batter with added sugar or sweet sauces, making it a dessert disguised as a snack.",
    "🔥 Promotes Inflammation: Fried carbs combined with sugar can worsen chronic inflammation linked to obesity.",
    "⚠️ Nutrient Imbalance: Lacks fiber, protein, or micronutrients — leading to poor satiety and overeating."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kluay Tod",
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
                  'assets2/images2/kluaytod.jpg', // Replace with your actual image
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
                    DataCell(Text("220-250 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text("30-35 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('1-2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre')),
                    DataCell(Text('1-2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fats')),
                    DataCell(Text('12-15 g')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Effects of Kluay Tod:',
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
                "✅ Healthier alternative: Air-fried banana slices or fresh banana with cinnamon and unsweetened Greek yogurt.",
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
