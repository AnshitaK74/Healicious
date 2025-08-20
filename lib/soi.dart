import 'package:flutter/material.dart';

class khaoSoi extends StatefulWidget {
  const khaoSoi({super.key});

  @override
  State<khaoSoi> createState() => _khaoSoiState();
}

class _khaoSoiState extends State<khaoSoi> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in fat: Khao Soi is often made with coconut milk, which can be high in fat. A high-fat diet may slow digestion and lead to discomfort for those with sensitive stomachs.",
    "Spicy ingredients: The dish contains curry paste and chili, which may cause irritation in the stomach lining, potentially worsening conditions like acid reflux or gastritis.",
    "Contains refined carbs: The noodles in Khao Soi are typically made with refined flour, which can be difficult for some people to digest, causing bloating or discomfort.",
    "Can lead to bloating: The combination of spices and coconut milk can lead to bloating and stomach discomfort, especially in individuals with sensitive digestion."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Khao Soi (Northern Thai Curry Noodles)',
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
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets5/images5/khao_soi.jpg', // Update the image path
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
                          child: Text('Nutrients per 1 bowl', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),),
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
                              DataCell(Text('500-600 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('45-55 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('10-12 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('30-35 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fibre')),
                              DataCell(Text('3-5 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Khao Soi',
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
                      )
                    ]
                )
            )
        )
    );
  }
}
