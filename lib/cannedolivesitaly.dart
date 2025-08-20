import 'package:flutter/material.dart';

class cannedolive extends StatefulWidget {
  const cannedolive({super.key});

  @override
  State<cannedolive> createState() => _cannedoliveState();
}

class _cannedoliveState extends State<cannedolive> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Often high in sodium which can contribute to increased blood pressure and cardiovascular risks in diabetics.",
    "May contain added preservatives or flavor enhancers that offer no nutritional benefit for blood sugar control.",
    "Low in carbohydrates but also low in fiber, offering minimal glycemic benefit when consumed in large quantities."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Canned Olive',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
                fontSize: 32),
          ),
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
                        'assets12/images12/p.jpeg',
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
                      child: Text('Nutrients per 1 slice',
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
                          DataCell(Text('40–60 kcal')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Carbohydrates')),
                          DataCell(Text('1–2 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Protein')),
                          DataCell(Text('0.3–0.5 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Sodium')),
                          DataCell(Text('300–400 mg')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Fat')),
                          DataCell(Text('4–6 g')),
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
                        'Effect of Canned Olive ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.green.shade800),
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
                      })
                ]))));
  }
}
