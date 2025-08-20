import 'package:flutter/material.dart';

class aloo extends StatefulWidget {
  const aloo({super.key});

  @override
  State<aloo> createState() => _alooState();
}

class _alooState extends State<aloo> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Sugar:Anko is made with a lot of sugar, which can cause a rapid spike in blood glucose levels.",
    "Low in Fiber:Lack of fiber means it doesn’t slow down glucose absorption, worsening blood sugar control.",
    "Hidden Carbs:Easily consumed in large amounts in sweets and snacks, adding up carbs quickly without awareness."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Anko',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                  fontSize: 32)),
        ),
        body: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets16/images16/anko.jpeg',
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
                      child: Text('Nutrients per 1 piece',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.green.shade800)),
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
                          DataCell(Text('180–220 kcal')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Carbohydrates')),
                          DataCell(Text('35–40 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Protein')),
                          DataCell(Text('4–6 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Sodium')),
                          DataCell(Text('0–50 mg')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Fat')),
                          DataCell(Text('0–2 g')),
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
                          'Effect of Anko',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.green.shade800),
                        ),
                      )),
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
                      })
                ]))));
  }
}
