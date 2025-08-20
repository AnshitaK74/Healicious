import 'package:flutter/material.dart';

class FriedQuesadillas extends StatefulWidget {
  const FriedQuesadillas({super.key});

  @override
  State<FriedQuesadillas> createState() => _FriedQuesadillasState();
}

class _FriedQuesadillasState extends State<FriedQuesadillas> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in unhealthy fats: Fried quesadillas are typically deep-fried in oils containing trans fats, which promote weight gain and increase the risk of obesity.",
    "Excessive calorie content: A fried quesadilla can contain around 400–600 kcal, which adds up quickly, especially when consumed in large quantities.",
    "Refined carbohydrates: The tortillas used in fried quesadillas are often made from refined flour, which can spike blood sugar levels and contribute to fat storage.",
    "High sodium content: Processed fillings often included in fried quesadillas raise the sodium content, causing water retention and bloating.",
    "Gut irritation: Fried foods are harder to digest, which can lead to bloating and discomfort, especially for those with digestive sensitivities."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fried Quesadillas',
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
                      'assets7/images7/lood.jpeg', // Image path
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
                      'Nutrients per 1 quesadilla',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.green.shade700),
                    ),
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
                        DataCell(Text('400–600 kcal')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Carbohydrates')),
                        DataCell(Text('40–55 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Protein')),
                        DataCell(Text('12–18 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Sodium')),
                        DataCell(Text('500–700 mg')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fat')),
                        DataCell(Text('20–30 g')),
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
                        leading: Icon(Icons.warning_amber, color: Colors.red),
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
