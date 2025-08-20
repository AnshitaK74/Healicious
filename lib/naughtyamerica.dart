import 'package:flutter/material.dart';

class friedSpringRollInfo extends StatefulWidget {
  const friedSpringRollInfo({super.key});

  @override
  State<friedSpringRollInfo> createState() => _friedSpringRollInfoState();
}

class _friedSpringRollInfoState extends State<friedSpringRollInfo> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Unhealthy Fats: Fried spring rolls are deep-fried in oil, which increases trans fats, contributing to inflammation and worsened insulin resistance in PCOS.",
    "Refined Carbohydrates: The pastry is made from refined white flour, which can cause blood sugar spikes and disrupt hormonal balance in women with PCOS.",
    "High in Calories: The deep frying process adds excess calories, which can contribute to weight gain, a common issue for women with PCOS.",
    "Low in Fiber: The lack of fiber makes it harder to control blood sugar and maintain hormonal balance.",
    "Increases Inflammation: The unhealthy fats and refined carbs can lead to systemic inflammation, which worsens PCOS symptoms like acne and weight gain.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FRIED SPRING ROLL',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
              fontSize: 26),
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
                  'assets3/imgaes4/friedspringroll.jpg', // Update the image path
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
                child: Text('Nutrients per 1 piece',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.green.shade800)),
              ),
            ),
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
                    DataCell(Text('100–150 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('15–20 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('2–3 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('5–10 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('1–3 g')),
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
                  'Effects on PCOS',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800),
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
                })
          ]),
        ),
      ),
    );
  }
}
