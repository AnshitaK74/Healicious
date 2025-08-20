import 'package:flutter/material.dart';
class burger extends StatefulWidget {
  const burger({super.key});

  @override
  State<burger> createState() => _burgerState();
}

class _burgerState extends State<burger> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
   "High in refined carbs (bun) : spikes blood sugar and insulin"
   "Contains saturated & trans fats (patty, cheese) : promotes inflammation"
   "Processed meats : may disrupt hormonal balance"
   "High in calories : contributes to weight gain"
   "Low in fiber : poor satiety and blood sugar control"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
      ),

      body: SingleChildScrollView(
    controller: _scrollController,
    child: Padding(
    padding: const EdgeInsets.all(16.0),
      child:Column(
        children: [
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets2/images2/burger.webp', height: 200,width: 150,fit: BoxFit.cover,),
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
                  DataCell(Text('250-290 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('25-30 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('12-14 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('sugar')),
                  DataCell(Text('4-6 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('12-15g')),
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
