import 'package:flutter/material.dart';
class aspartame extends StatefulWidget {
  const aspartame({super.key});

  @override
  State<aspartame> createState() => _aspartameState();
}

class _aspartameState extends State<aspartame> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    " Impact on Digestive Enzymes:Some early research hints that aspartame might interfere with digestive enzymesand affect intestinal tight junctions (contributing to leaky gut)"
    "May Exacerbate IBS or Functional Gut Disorders:Anecdotal reports and some small studies suggest that people with IBS or food sensitivities may experience Bloating,Gas,Cramping"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ASPARTAME',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
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
                          child: Image.asset('assets2/images2/aspar.webp', height: 200,width: 150,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 28),
                      Padding(padding: EdgeInsets.only(left: 14),


                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Nutrients per 1 tbsp',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                              DataCell(Text('4 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('1 g')),
                            ]),
                            DataRow(cells: [
                                DataCell(Text('GI')),
                        DataCell(Text('0 ')),
                            ]),
                          DataRow(cells: [
                            DataCell(Text('sugar')),
                            DataCell(Text('0 g')),
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
                            'Effect of Aspartame',
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
