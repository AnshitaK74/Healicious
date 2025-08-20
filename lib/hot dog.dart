import 'package:flutter/material.dart';
class hotdog extends StatefulWidget {
  const hotdog({super.key});

  @override
  State<hotdog> createState() => _hotdogState();
}

class _hotdogState extends State<hotdog> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
   "High in saturated & trans fats : increases inflammation"
   "Processed meat : linked to hormonal imbalance and insulin resistance"
   "High in sodium : can cause bloating and water retention"
   "Refined bun : spikes blood sugar levels"
   "Low in fiber : poor blood sugar control"
   "Calorie-dense : contributes to weight gain"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOT DOG',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
      ),

      body:
    SingleChildScrollView(
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
              child: Image.asset('assets2/images2/hot dog.webp', height: 200,width: 150,fit: BoxFit.cover,),
            ),
          ),

    SizedBox(height: 28),
    Padding(padding: EdgeInsets.only(left: 14),


          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Nutrients per 100gm',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                  DataCell(Text('calories')),
                  DataCell(Text('280-310 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('20-25 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('10-12 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('18-22 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('cholestrol')),
                  DataCell(Text('45-50 mg')),
                ]),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.only(left: 14),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Effect of white Rice on PCOS',
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
