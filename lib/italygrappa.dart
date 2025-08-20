import 'package:flutter/material.dart';

class GrappaAlcohol extends StatefulWidget {
  const GrappaAlcohol({super.key});

  @override
  State<GrappaAlcohol> createState() => _GrappaAlcoholState();
}

class _GrappaAlcoholState extends State<GrappaAlcohol> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Destroys Gut Flora: High alcohol content in grappa can drastically reduce beneficial gut bacteria.",
    "Erodes Mucosal Lining: Strong spirits like grappa may irritate and damage the gut lining.",
    "Disrupts Digestion: It slows down the digestive process, causing bloating and discomfort.",
    "Impairs Enzyme Function: Alcohol can inhibit the production of digestive enzymes needed for proper breakdown of food.",
    "Increases Inflammation: Grappa may trigger systemic inflammation, worsening gut health over time."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grappa',
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
                    'assets2/images2/grapes.jpeg', // Replace with actual asset path
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
                  'Nutrients per 1 shot ',
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
                  DataCell(Text('100 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('0 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sugar')),
                  DataCell(Text('0 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Alcohol')),
                  DataCell(Text('35–60% ABV')),
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
                  'Negative Impact of Grappa ',
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
