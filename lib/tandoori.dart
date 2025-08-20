import 'package:flutter/material.dart';
class tandoori extends StatefulWidget {
  const tandoori({super.key});

  @override
  State<tandoori> createState() => _tandooriState();
}

class _tandooriState extends State<tandoori> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Acid Reflux & Heartburn:Tandoori Paneer are often marinated with spices, yogurt, and citrus, which can increase stomach acidity. The high heat used in cooking can further irritate the stomach lining, leading to acid reflux and heartburn."
    "Increased Burping and Indigestion:The charred and smoky flavor from tandoori cooking can sometimes lead to incomplete digestion, causing gas buildup and burping. The food’s richness in oils and fats can also slow digestion."
    "Sodium & Preservatives:Some tandoori Paneer, especially in restaurant versions, may contain high levels of sodium and preservatives (like MSG) that can lead to bloating, water retention, and gastrointestinal discomfort."
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TANDOORI PANEER',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
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
                          child: Image.asset('assets3/imgaes4/tandoori.jpg', height: 200,width: 150,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 28),
                      Padding(padding: EdgeInsets.only(left: 14),


                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Nutrients per 1 plate',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                              DataCell(Text('250-300 kcal')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Carbohydrates')),
                              DataCell(Text('6-8 g')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Cholesterol')),
                              DataCell(Text('	25-30 mg')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('sodium')),
                              DataCell(Text('400-500 mg')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Total Fat')),
                              DataCell(Text('	18-22 g')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Effect of Tandoori paneer',
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
