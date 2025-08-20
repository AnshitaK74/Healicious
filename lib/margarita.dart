import 'package:flutter/material.dart';
class margarita extends StatefulWidget {
  const margarita({super.key});

  @override
  State<margarita> createState() => _margaritaState();
}

class _margaritaState extends State<margarita> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Empty Calories:These calories are nutrient-poor and can contribute to weight gain and belly fat—both major heart risk factors."
    "Increases Triglycerides:Alcohol is processed in the liver and can boost triglyceride levels, especially when paired with sugar.and high triglycerides are linked to plaque buildup in arteries (atherosclerosis)."
    "May Trigger Arrhythmias:The mix of alcohol + sugar + potential stimulants (in pre-mixed drinks) can increase the risk of irregular heart rhythms like AFib."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MARGARITA',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
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
                          child: Image.asset('assets3/imgaes4/sugar.jpe', height: 200,width: 150,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 28),
                      Padding(padding: EdgeInsets.only(left: 14),


                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Nutrients per 1 glass',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                              DataCell(Text('170-200 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('15-25 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Alcohol')),
                              DataCell(Text('14 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('sugar')),
                              DataCell(Text('12-20 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('0 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Margarita',
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
