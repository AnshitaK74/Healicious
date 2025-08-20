import 'package:flutter/material.dart';
class shahipaneer extends StatefulWidget {
  const shahipaneer ({super.key});

  @override
  State<shahipaneer> createState() => _shahipaneerState();
}

class _shahipaneerState extends State<shahipaneer> {

  final ScrollController _scrollController = ScrollController();
  final List<String> impacts=[
    "Affects Metabolism:Foods like Shahi Paneer, which are low in fiber and high in refined fats, do not support the liver’s ability to detoxify or metabolize fats efficiently. The lack of fiber makes digestion slower, adding additional strain on the liver."
    " Worsens Insulin Resistance:Insulin Resistance: Shahi Paneer, with its high-calorie and fat content, can contribute to weight gain, especially abdominal fat, which is a risk factor for insulin resistance. This condition impairs the liver's ability to metabolize fats and sugars properly, worsening fatty liver."
    "Raises Cholesterol Levels Cholesterol: Full-fat dairy (paneer and cream) is high in cholesterol. Elevated cholesterol, especially LDL (bad cholesterol), can contribute to fatty liver by increasing fat accumulation in the liver cells and impairing liver function."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SHAHAI PANEER',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
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
                              'assets2/images2/shahi.jpg',
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
                          child: Text('Nutrients per 1 bowl',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
                              DataCell(Text('400-450 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Cholestrol')),
                              DataCell(Text('60-80 mg')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('10-15 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Total Fat')),
                              DataCell(Text('30-40 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Sodium')),
                              DataCell(Text('400-600 g')),
                            ])
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of shahi paneer',
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
