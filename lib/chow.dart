import 'package:flutter/material.dart';

class chowmein extends StatefulWidget {
  const chowmein({super.key});

  @override
  State<chowmein> createState() => _chowmeinState();
}

class _chowmeinState extends State<chowmein> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Carbohydrates: Chow Mein is made primarily from noodles, which are high in carbohydrates. Excessive carb consumption can lead to blood sugar spikes and may contribute to weight gain if not balanced with other nutrients.",
    "High in Sodium: Chow Mein often contains soy sauce and other salty seasonings, leading to a high sodium content. Excess sodium can contribute to high blood pressure and negatively affect heart health.",
    "High in Fat (Especially Fried Noodles): Many versions of Chow Mein use fried noodles, which are high in unhealthy fats. This can lead to an increase in trans fats, contributing to unhealthy cholesterol levels and poor metabolism."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Chow Mein',
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
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets5/images5/chowmein.jpg', // Use your image path
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
                      'Nutrients per 1 bowl',
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
                    border: Border.all(color: Colors.black), // Outline border
                    borderRadius: BorderRadius.circular(5), // Optional: Rounded corners
                  ),
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Nutrient')),
                      DataColumn(label: Text('Amount per 1 bowl')),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('Calories')),
                        DataCell(Text('400–500 kcal')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Carbohydrates')),
                        DataCell(Text('50–60 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Protein')),
                        DataCell(Text('10–15 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fat')),
                        DataCell(Text('15–20 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fiber')),
                        DataCell(Text('3–5 g')),
                      ])
                    ],
                  ),
                ),
                SizedBox(height: 28),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Effect of Chow Mein',
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
                    })
              ],
            )));
  }
}
