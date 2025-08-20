import 'package:flutter/material.dart';

class udon extends StatefulWidget {
  const udon({super.key});

  @override
  State<udon> createState() => _udonState();
}

class _udonState extends State<udon> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbs:Udon noodles are made from refined wheat, which rapidly increases blood sugar.",
    "Low Nutritional Value:They are low in fiber and protein, contributing to poor satiety and glucose spikes.",
    "High Sodium (When in Broth):Udon served in broth often contains a lot of sodium, worsening insulin resistance."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Udon',
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
                        "assets16/images16/udon.jpeg", // Replace with udon image path
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
                      child: Text('Nutrients per 1 bowl ',
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
                          DataCell(Text('200–250 kcal')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Carbohydrates')),
                          DataCell(Text('40–45 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Protein')),
                          DataCell(Text('6–8 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Sodium')),
                          DataCell(Text('500–800 mg (with broth)')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Fat')),
                          DataCell(Text('1–2 g')),
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
                          'Effect of Udon',
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
