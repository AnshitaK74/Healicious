import 'package:flutter/material.dart';
class chips extends StatefulWidget {
  const chips({super.key});

  @override
  State<chips> createState() => _chipsState();
}

class _chipsState extends State<chips> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Excess Sodium: The high salt content in chips contributes to high blood pressure, a major risk factor for heart disease and stroke. Even small amounts can add up over time."
    "Empty Calories: Chips are high in calories but low in nutritional value, leading to weight gain. Excess weight, especially around the belly, is linked to a higher risk of heart disease."
    "Inflammation and Oxidative Stress: The fats and preservatives in chips can trigger inflammation and oxidative stress, both of which damage blood vessels and contribute to the development of heart disease."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CHIPS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
        ),

        body: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(

                    children: [
                      Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets3/imgaes4/cccc.jpg', height: 200,width: 150,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 28),
                      Padding(padding: EdgeInsets.only(left: 14),


                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Nutrients per 1 packet',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                              DataCell(Text('calories')),
                              DataCell(Text('320 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('45 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Suagr')),
                              DataCell(Text('3 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Sodium')),
                              DataCell(Text('800 mg')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('6 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Chips',
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
