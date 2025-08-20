import 'package:flutter/material.dart';

class ItalianCannedSoup1 extends StatefulWidget {
  const ItalianCannedSoup1({super.key});

  @override
  State<ItalianCannedSoup1> createState() => _ItalianCannedSoup1State();
}

class _ItalianCannedSoup1State extends State<ItalianCannedSoup1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Sodium Content: Canned jalapeños are often preserved in salty brine, which can contribute to water retention and bloating, worsening PCOS symptoms.",
    "Preservatives and Additives: Chemical preservatives in canned jalapeños may interfere with hormone balance and contribute to inflammation.",
    "Gastrointestinal Irritation: The acidity and spice level in canned jalapeños can cause digestive discomfort or heartburn, which may affect gut health—closely linked to PCOS.",
    "Blood Sugar Spikes: Though low in calories, some brands may contain added sugars, which can disrupt insulin sensitivity in women with PCOS.",
    "Possible Endocrine Disruptors: The can lining may contain BPA or similar compounds that act as endocrine disruptors, affecting hormonal balance.",
    "Low Nutritional Density: Compared to fresh jalapeños, canned versions may lose some vitamins and antioxidants during processing.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Canned Jalapeño',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets7/images7/ping.jpeg', // Update to correct jalapeño image path
                    height: 250,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1/4 cup (sliced)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade800,
                  ),
                ),
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
                    DataCell(Text('10–15 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('2–3 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sugar')),
                    DataCell(Text('0–1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fiber')),
                    DataCell(Text('1–2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('0–1 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('0 g')),
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
                  'Effect of Canned Jalapeño ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade800,
                  ),
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
            ),
          ]),
        ),
      ),
    );
  }
}
