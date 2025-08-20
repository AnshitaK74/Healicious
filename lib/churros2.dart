import 'package:flutter/material.dart';

class Churros2 extends StatefulWidget {
  const Churros2({super.key});

  @override
  State<Churros2> createState() => _ChurrosState();
}

class _ChurrosState extends State<Churros2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in sugar: Churros are typically coated in sugar, which significantly increases calorie intake and contributes to weight gain.",
    "High in unhealthy fats: They are deep-fried in oils, adding unhealthy trans fats to the diet, which are known to promote obesity.",
    "Excessive calorie content: A single churro can contain 200-300 calories, and consuming multiple churros at once can quickly add up to a large calorie surplus.",
    "Refined carbohydrates: The dough used in churros is made from refined flour, which causes rapid spikes in blood sugar levels and encourages fat storage.",
    "Gut irritation: Deep-fried foods like churros can irritate the digestive system, causing bloating and discomfort, especially in those with sensitive stomachs."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Churros',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
                fontSize: 32),
          ),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets7/images7/churros.webp', // Image path
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
                    child: Text(
                      'Nutrients per 1 churro',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.green.shade700),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
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
                        DataCell(Text('200–300 kcal')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Carbohydrates')),
                        DataCell(Text('25–35 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Protein')),
                        DataCell(Text('2–4 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Sodium')),
                        DataCell(Text('100–150 mg')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fat')),
                        DataCell(Text('10–20 g')),
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
                      'Effect on Obesity',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.green.shade700),
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
              ],
            ),
          ),
        ));
  }
}
