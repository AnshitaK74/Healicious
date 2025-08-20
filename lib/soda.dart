import 'package:flutter/material.dart';
class soda extends StatefulWidget {
  const soda({super.key});

  @override
  State<soda> createState() => _sodaState();
}

class _sodaState extends State<soda> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
   "High in added sugars : causes insulin spikes"
   "Worsens insulin resistance : key issue in PCOS"
   "Increases risk of weight gain : hard to manage PCOS symptoms"
   "Promotes inflammation : worsens hormonal imbalance"
   "No nutrients : empty calories with no health benefits"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SODA',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade800,fontSize: 32),),
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
              child: Image.asset('assets2/images2/soda.jpg', height: 200,width: 150,fit: BoxFit.cover,),
            ),
          ),
              SizedBox(height: 28),
              Padding(padding: EdgeInsets.only(left: 14),


                  child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Nutrients per 100gm',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800)),
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
                  DataCell(Text('40-45 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('11 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('0 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('sugar')),
                  DataCell(Text('11 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('caffine')),
                  DataCell(Text('8-10 mg')),
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
