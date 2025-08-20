import 'package:flutter/material.dart';
class golden extends StatefulWidget {
  const golden({super.key});

  @override
  State<golden> createState() => _goldenState();
}

class _goldenState extends State<golden> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Blood Sugar Spikes: The refined carbs from the curry block can cause a rapid increase in blood glucose when consumed without fiber or protein to slow digestion."
    "Saturated Fat :The saturated fat content contributes to insulin resistance, making it harder for the body to regulate blood sugar levels. This increases the risk of developing heart disease, which diabetics are already more prone to."
    "Risk of Overeating:Curry blocks are often used in rich, high-calorie dishes. Without balancing with lean protein and vegetables, this can lead to overeating, which can negatively affect weight management and blood sugar levels"
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Curry Block',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
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
                          child: Image.asset('assets5/images5/hi.jpeg', height: 200,width: 150,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 28),
                      Padding(padding: EdgeInsets.only(left: 14),


                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Nutrients per 1 piece',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                              DataCell(Text('90–100 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('9–11 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Protein')),
                              DataCell(Text('1 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fat')),
                              DataCell(Text('5 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Fiber')),
                              DataCell(Text('1-2 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Sugar')),
                              DataCell(Text('1-2 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Curry Block',
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
