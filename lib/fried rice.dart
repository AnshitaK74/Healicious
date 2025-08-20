import 'package:flutter/material.dart';
class friedrice extends StatefulWidget {
  const friedrice ({super.key});

  @override
  State<friedrice> createState() => _friedriceState();
}

class _friedriceState extends State<friedrice> {

  final ScrollController _scrollController = ScrollController();
  final List<String> impacts=[
    " Calorie-Dense:Fried rice is usually high in calories due to the oil used in cooking, making it easy to overeat. This can contribute to weight gain, which is a key risk factor for fatty liver disease."
    "High in Unhealthy Fats:Deep-fried or stir-fried in oil, fried rice often contains excessive amounts of fat (especially saturated fats or trans fats from reused oils), which can lead to fatty liver by promoting fat buildup in liver cells and increasing inflammation."
    "High Sodium: Often made with soy sauce or other salt-heavy ingredients, fried rice can increase sodium intake, putting strain on the liver and raising blood pressure."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FRIED RICE',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
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
                              'assets2/images2/rrr.jpg',
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
                              DataCell(Text('250–300 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Cholestrol')),
                              DataCell(Text('30–50 mg')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('35–40 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Total Fat')),
                              DataCell(Text('8–12 g')),
                            ]),

                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Fried Rice',
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
