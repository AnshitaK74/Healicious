import 'package:flutter/material.dart';
class chakli extends StatefulWidget {
  const chakli ({super.key});

  @override
  State<chakli> createState() => _chakliState();
}

class _chakliState extends State<chakli> {

  final ScrollController _scrollController = ScrollController();
  final List<String> impacts=[
    "High in Calories:Being fried and made with flour, chakli is calorie-dense and frequent consumption leads to weight gain, which directly increases the risk of heart disease."
        " High Sodium Content:Many store-bought chaklis contain added salt or preservatives and excessive sodium can contribute to high blood pressure, a significant risk factor for heart disease and stroke."
        "Promotes Inflammation:Saturated fats, refined carbs, and excessive salt can cause inflammation in the body.and chronic inflammation contributes to the damage of blood vessels, leading to higher risk of heart disease, hypertension, and diabetes."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CHAKLI',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
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
                              'assets4/img4/ee.jpg',
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
                          child: Text('Nutrients per 1 Bowl',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
                              DataCell(Text('150–180 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fiber')),
                              DataCell(Text('	1–2 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('20–25 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('8–10 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Sodium')),
                              DataCell(Text('100–150 mg')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effects of Chakli',
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
