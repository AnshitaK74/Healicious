import 'package:flutter/material.dart';

class padPrikSod extends StatefulWidget {
  const padPrikSod({super.key});

  @override
  State<padPrikSod> createState() => _padPrikSodState();
}

class _padPrikSodState extends State<padPrikSod> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Spicy nature: The dish contains a lot of chili peppers, which can irritate the stomach and worsen acid reflux or gastritis.",
    "May cause bloating: Due to the spicy ingredients, it can cause gas, bloating, or indigestion in some individuals.",
    "High in sodium: If prepared with soy sauce or fish sauce, it can contribute to high sodium intake, which is not ideal for gut health.",
    "Increased gut inflammation: The high spice content can trigger inflammation in the stomach lining or intestines, leading to discomfort."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Pad Prik Sod (Thai Stir-Fried Chili)',
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
                              'assets5/images5/pad_prik_sod.jpg', // Adjust the image path accordingly
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
                              DataCell(Text('250-300 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('10-15 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('12-15 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('18-22 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fibre')),
                              DataCell(Text('3-4 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Pad Prik Sod',
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
