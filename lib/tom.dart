import 'package:flutter/material.dart';

class tomKhaGai extends StatefulWidget {
  const tomKhaGai({super.key});

  @override
  State<tomKhaGai> createState() => _tomKhaGaiState();
}

class _tomKhaGaiState extends State<tomKhaGai> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Sodium: Tom Kha Gai often includes fish sauce or soy sauce, which can be high in sodium. Excessive sodium intake can contribute to bloating and disrupt gut health.",
    "Contains Coconut Milk: While coconut milk adds creaminess, it can be high in saturated fats. Overconsumption of saturated fats may hinder digestion, especially in sensitive individuals.",
    "Contains Chicken: Chicken is a rich source of protein which can be beneficial for gut health. However, high-protein diets can sometimes lead to digestive discomfort, especially if consumed in large amounts.",
    "Anti-inflammatory: The herbs used, such as lemongrass, kaffir lime leaves, and galangal, have anti-inflammatory properties, which can support a healthy digestive system and reduce gut inflammation.",
    "Promotes Digestion: The ginger and garlic in Tom Kha Gai can aid digestion, reduce bloating, and support gut health by promoting good bacterial balance in the gut."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tom Kha Gai',
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
          child: Column(
            children: [
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
                      'assets2/images2/tom_kha_gai.jpg',
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
                    'Nutrients per 1 bowl',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),
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
                      DataCell(Text('250-300 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('10-15 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('20-25 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('15-20 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber')),
                      DataCell(Text('2-3 g')),
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
                    'Effect of Tom Kha Gai on Gut Health',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),
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
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
