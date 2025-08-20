import 'package:flutter/material.dart';

class khanjeen extends StatefulWidget {
  const khanjeen({super.key});

  @override
  State<khanjeen> createState() => _khanjeenState();
}

class _khanjeenState extends State<khanjeen> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Refined Carbs: Khan Jeen is made from rice, which is often a refined carbohydrate, and consuming too much refined carbs can lead to blood sugar spikes and may negatively affect gut health over time.",
    "Low in Fiber: The noodles are low in fiber, which is crucial for healthy digestion. Lack of fiber can lead to constipation and irregular bowel movements, disrupting gut health.",
    "Gut Flora Imbalance: Refined carbs in Khan Jeen can feed bad bacteria in the gut, leading to an imbalance in gut microbiota, which can result in digestive issues and poor nutrient absorption.",
    "May Cause Bloating: Overconsumption of Khan Jeen, especially when consumed with rich sauces, may cause bloating, discomfort, and gas, especially in individuals with sensitive digestive systems."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Khan Jeen (Thai Rice Noodles)',
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
                        'assets5/images5/khanjeen.jpg', // Use your image path
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
                      'Nutrients per 1 plate',
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
                    borderRadius: BorderRadius.circular(
                        5), // Optional: Rounded corners
                  ),
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Nutrient')),
                      DataColumn(label: Text('Amount per 1 plate')),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('Calories')),
                        DataCell(Text('200–250 kcal')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Carbohydrates')),
                        DataCell(Text('40–50 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Protein')),
                        DataCell(Text('4–6 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fat')),
                        DataCell(Text('2–5 g')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Fiber')),
                        DataCell(Text('1–2 g')),
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
                      'Impact of Khan Jeen on Gut Health',
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

            )
        )
    );
  }
}
