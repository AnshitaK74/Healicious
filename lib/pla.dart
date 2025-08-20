import 'package:flutter/material.dart';

class PlaNeungManao extends StatefulWidget {
  const PlaNeungManao({super.key});

  @override
  State<PlaNeungManao> createState() => _PlaNeungManaoState();
}

class _PlaNeungManaoState extends State<PlaNeungManao> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Protein: The fish in Pla Neung Manao is a great source of lean protein, which helps stabilize blood sugar levels and support muscle health.",
    "Low in Carbohydrates: This dish is low in carbohydrates, making it suitable for individuals with diabetes who need to manage their blood sugar levels.",
    "Rich in Omega-3 Fatty Acids: Omega-3s help reduce inflammation and improve heart health, which is important for diabetes management.",
    "Lime's Antioxidant Benefits: The lime used in the dish provides antioxidants and vitamin C, which may help reduce oxidative stress and lower the risk of complications in diabetes.",
    "Supports Healthy Digestion: Pla Neung Manao is often served with fresh herbs like cilantro, which can aid digestion and promote gut health."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pla Neung Manao (Steamed Fish with Lime)",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/pla_neung_manao.jpg', // Replace with the actual image path for Pla Neung Manao
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
                child: Text('Nutrition per 1 piece',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
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
                    DataCell(Text("180 kcal")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text("22 g")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('2 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total Fat')),
                    DataCell(Text('8 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('350 mg')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Effects on Diabetes:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
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
                })
          ],
        ),
      ),
    );
  }
}
