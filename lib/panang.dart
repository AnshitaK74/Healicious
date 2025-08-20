import 'package:flutter/material.dart';

class panang extends StatefulWidget {
  const panang({super.key});

  @override
  State<panang> createState() => _panangState();
}

class _panangState extends State<panang> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Calories: Panang curry often uses coconut milk and fatty meats, contributing to a high calorie content per serving.",
    "Promotes Inflammation: High-fat, high-sodium dishes like Panang curry can contribute to inflammation, which may worsen PCOS or gut health issues.",
    "Low in Fiber: Despite the richness of flavors, Panang curry can be low in fiber unless served with added vegetables or whole grains.",
    "High in Saturated Fats: Coconut milk and fatty cuts of meat often used in Panang curry contribute to higher levels of saturated fats."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Panang Curry',
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
                      Padding(padding: EdgeInsets.only(top: 14),
                        child:Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets2/images2/panang_curry.jpg', // Add the relevant image for Panang Curry
                              height: 250,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 28),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Nutrients per 1 bowl',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
                              DataCell(Text('500–600 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('30–40 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('10–15 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('30–40 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fibre')),
                              DataCell(Text('3–4 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Panang Curry',
                            style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),
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
                      )
                    ]
                )
            )
        )
    );
  }
}
