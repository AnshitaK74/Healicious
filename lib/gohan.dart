import 'package:flutter/material.dart';
class gohan extends StatefulWidget {
  const gohan ({super.key});

  @override
  State<gohan> createState() => _gohanState();
}

class _gohanState extends State<gohan> {

  final ScrollController _scrollController = ScrollController();
  final List<String> impacts=[
  "Low Fiber:Gohan is low in fiber, meaning it doesn’t slow digestion, worsening blood sugar spikes."
    "Long-term Risks:Regular high intake of white rice is linked to a higher risk of developing type 2 diabetes, according to multiple studies."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gohan',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
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
                              'aassets5/images5/anko.jpeg',
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
                              DataCell(Text('240 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('53–55 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('4 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Sugar')),
                              DataCell(Text('0.1 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('0.3 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fibre')),
                              DataCell(Text('0.5 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Gohan',
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
