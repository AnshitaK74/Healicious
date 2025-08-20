import 'package:flutter/material.dart';
class bread extends StatefulWidget {
  const bread({super.key});

  @override
  State<bread> createState() => _breadState();
}

class _breadState extends State<bread> {

  final ScrollController _scrollController = ScrollController();
  final List<String> impacts=[
  "High in refined carbs: Causes rapid blood sugar spikes, leading to insulin resistance, a major cause of non-alcoholic fatty liver disease (NAFLD)."
    "Promotes fat buildup in the liver: Excess carbs from white bread are converted into triglycerides and stored in the liver as fat."
    "Triggers inflammation – Refined carbs increase inflammatory markers, contributing to liver inflammation and damage over time."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WHITE BREAD',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
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
                              'assets2/images2/bread.jpg',
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
                          child: Text('Nutrients per 1 slice',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
                              DataCell(Text('70–80 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('13–15 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Sugar')),
                              DataCell(Text('	1–2 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('2-3 g ')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('0.5–1 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Bread',
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
