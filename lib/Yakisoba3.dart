import 'package:flutter/material.dart';

class yakisoba3 extends StatefulWidget {
  const yakisoba3({super.key});

  @override
  State<yakisoba3> createState() => _yakisoba3State();
}

class _yakisoba3State extends State<yakisoba3> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Refined Carbs:Yakisoba uses wheat noodles which raise blood glucose quickly.",
    "Sugary Sauce:The sweet soy-based sauce adds sugar, worsening blood sugar spikes.",
    "Low in Fiber:Typically lacks fiber-rich vegetables, leading to poor glucose control and increased hunger."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yakisoba',
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
                        'assets16/images16/yakisoba.jpeg', // Replace with yakisoba image, e.g. 'assets5/images5/yaki.jpeg'
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
                      child: Text('Nutrients per 1 plate ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.green.shade800)),
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
                          DataCell(Text('300–400 kcal')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Carbohydrates')),
                          DataCell(Text('45–55 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Protein')),
                          DataCell(Text('6–10 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Sodium')),
                          DataCell(Text('600–1000 mg')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Fat')),
                          DataCell(Text('12–18 g')),
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
                          'Effect of Yakisoba',
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
