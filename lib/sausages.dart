import 'package:flutter/material.dart';
class sausages extends StatefulWidget {
  const sausages({super.key});

  @override
  State<sausages> createState() => _sausagesState();
}

class _sausagesState extends State<sausages> {

  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
   "High in saturated fats : increases inflammation"
   "Often contain trans fats : worsens insulin resistance"
   "Processed meat : linked to hormonal imbalance"
   "High in sodium : causes bloating and water retention"
   "Low in fiber : poor blood sugar regulation"
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
                  DataCell(Text('300–350 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('1–3 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('12–16 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('25–30 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('cholestrol')),
                  DataCell(Text('60–75  mg')),
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

