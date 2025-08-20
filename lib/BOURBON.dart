import 'package:flutter/material.dart';
class BOURBON extends StatefulWidget {
  const BOURBON ({super.key});

  @override
  State<BOURBON > createState() => _BOURBONState();
}

class _BOURBONState extends State<BOURBON > {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "High in Saturated Fat:Bourbon biscuits often use palm oil or hydrogenated fats and this Promote artery-clogging plaque."
    "Excess sugar:Excess sugar increases triglycerides, raising heart failure risk."
    "Contains Additives & Preservatives:Many Bourbon biscuits include artificial flavors, emulsifiers, and preservatives due to which it contribute to inflammation key contributer to heart disease."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BOURBON ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
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
                          child: Image.asset('assets3/imgaes4/bbbbb.jpeg', height: 200,width: 150,fit: BoxFit.cover,),
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
                              DataCell(Text('200–240 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('14–17 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('	4–6 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Sodium')),
                              DataCell(Text('250–350 mg')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('13–18 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Bourbon',
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
