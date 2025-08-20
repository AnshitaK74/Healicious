import 'package:flutter/material.dart';

class gaiYang extends StatefulWidget {
  const gaiYang({super.key});

  @override
  State<gaiYang> createState() => _gaiYangState();
}

class _gaiYangState extends State<gaiYang> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in protein: Gai Yang is a good source of lean protein, but when consumed in excess, high-protein diets can be hard on the kidneys and digestion, especially for people with sensitive stomachs.",
    "High in fat: While grilled, Gai Yang can sometimes be cooked with oil or fatty cuts, which can contribute to indigestion or bloating, especially for those with weak digestion.",
    "Spicy Marinade: The marinade for Gai Yang often includes chili, garlic, and other spices that can irritate the stomach lining, leading to acid reflux or gastritis in some individuals.",
    "May cause bloating: The combination of spices and grilling can lead to bloating or discomfort, particularly in individuals with IBS or other digestive conditions."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Gai Yang (Grilled Thai Chicken)',
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
                              'assets5/images5/gai_yang.jpg', // Update the image path
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
                          child: Text('Nutrients per 1 piece', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),),
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
                              DataCell(Text('200-250 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('5-10 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('25-30 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('10-15 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fibre')),
                              DataCell(Text('0-2 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Gai Yang',
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
