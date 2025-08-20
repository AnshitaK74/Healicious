import 'package:flutter/material.dart';
class chutney extends StatefulWidget {
  const chutney({super.key});

  @override
  State<chutney> createState() => _chutneyState();
}

class _chutneyState extends State<chutney> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Gas and Bloating:Some green chutneys contain coriander and mint, while red chutneys often use onions. These ingredients can be gas-producing for individuals with IBS (Irritable Bowel Syndrome) or those sensitive to certain herbs. Over time, this can lead to bloating and discomfort."
    "Diarrhea or Loose Stools:For people with sensitive digestion or a weakened immune system, even fresh ingredients like cilantro, mint, or tamarind could lead to foodborne illness or diarrhea if the chutney isn't prepared properly or stored hygienically."
    "Histamine Reactions from Aged Ingredients:Some ingredients like fermented tamarind, old garlic, or aged vinegar can be high in histamines, potentially triggering inflammation, headaches, or gut discomfort in histamine-sensitive individuals."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RED/GREEN CHUTNEY',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
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
                          child: Image.asset('assets3/imgaes4/chutney.jpeg', height: 200,width: 150,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 28),
                      Padding(padding: EdgeInsets.only(left: 14),


                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Nutrients per 1 small bowl',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                              DataCell(Text('25-35 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('4-6 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Cholesterol')),
                              DataCell(Text('	25-30 mg')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('0.5-1 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Total Fat')),
                              DataCell(Text('	1-2 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Red/Green chutney',
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
