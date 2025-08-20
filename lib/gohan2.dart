import 'package:flutter/material.dart';

class gohan2 extends StatefulWidget {
  const gohan2({super.key});

  @override
  State<gohan2> createState() => _gohan2State();
}

class _gohan2State extends State<gohan2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High Glycemic Index:White rice rapidly increases blood sugar, which is risky for diabetic patients.",
    "Lacks Fiber:Refined rice has the bran removed, offering little fiber to slow sugar absorption.",
    "Promotes Insulin Resistance:Frequent intake of white rice is linked to increased risk of type 2 diabetes."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gohan',
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
                        'assets16/images16/gohan.jpeg', // Change this to your gohan image path
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
                          DataCell(Text('200–250 kcal')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Carbohydrates')),
                          DataCell(Text('45–55 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Protein')),
                          DataCell(Text('3–5 g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Sodium')),
                          DataCell(Text('0–20 mg')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Fat')),
                          DataCell(Text('0.2–0.5 g')),
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
                          'Effect of Gohan',
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
