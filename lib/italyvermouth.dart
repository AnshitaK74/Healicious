import 'package:flutter/material.dart';

class VermouthAlcohol extends StatefulWidget {
  const VermouthAlcohol({super.key});

  @override
  State<VermouthAlcohol> createState() => _VermouthAlcoholState();
}

class _VermouthAlcoholState extends State<VermouthAlcohol> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Disrupts Gut Microbiota: Alcohol like vermouth can negatively alter the balance of beneficial gut bacteria.",
    "Increases Intestinal Permeability: It may contribute to 'leaky gut', allowing toxins and pathogens into the bloodstream.",
    "Impairs Nutrient Absorption: Alcohol can hinder the absorption of key nutrients essential for gut and overall health.",
    "Promotes Inflammation: Regular consumption may cause inflammation in the gut lining, worsening gut-related issues.",
    "Delays Gastric Emptying: Vermouth may slow digestion, leading to bloating and discomfort."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vermouth ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/vermouth.webp', // Replace with actual path
                    height: 250,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 glass ',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(columns: const [
                DataColumn(label: Text('Nutrient')),
                DataColumn(label: Text('Amount')),
              ], rows: const [
                DataRow(cells: [
                  DataCell(Text('Calories')),
                  DataCell(Text('130 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('14 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sugar')),
                  DataCell(Text('13 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Alcohol')),
                  DataCell(Text('15% ABV')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fibre')),
                  DataCell(Text('0 g')),
                ]),
              ]),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Negative Impact of Vermouth on Gut Health',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800),
                ),
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
          ],
        ),
      ),
    );
  }
}
