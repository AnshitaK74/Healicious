import 'package:flutter/material.dart';
class wr extends StatefulWidget {
  const wr({super.key});

  @override
  State<wr> createState() => _wrState();
}

class _wrState extends State<wr> {

  final ScrollController _scrollController = ScrollController();
  final List<String> impacts=[
    "Increases insulin resistance – White rice is quickly digested and absorbed into the bloodstream, causing a rapid spike in blood sugar. Over time, this can lead to insulin resistance, a key factor in developing and worsening non-alcoholic fatty liver disease (NAFLD)."
    "Lack of fiber – Unlike brown rice or whole grains, white rice is stripped of its fiber, which slows down digestion and helps control blood sugar. The absence of fiber in white rice makes it less suitable for liver health and increases the risk of fatty liver."
    "Higher oxidative stress – Consuming high-glycemic foods like white rice increases inflammation and oxidative stress, which can damage liver cells and contribute to liver fibrosis or cirrhosis in the long run."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WHITE RICE',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
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
                              'assets2/images2/rr.webp',
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
                              DataCell(Text('130 kcal kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('28.2 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fibre')),
                              DataCell(Text('	1.8 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('2.7 ')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('0.3 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of White Rice',
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
