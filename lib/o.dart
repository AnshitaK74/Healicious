import 'package:flutter/material.dart';

class o extends StatefulWidget {
  const o({super.key});

  @override
  State<o> createState() => _oState();
}

class _oState extends State<o> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Very High in Sodium:Most tsukemono are heavily salted, which can lead to water retention, bloating, and increased blood pressure—especially problematic in PCOS with insulin resistance or metabolic issues."
    "Added Sugar in Some Varieties:Some types (like takuan or beni shoga) contain added sugar, which can contribute to blood sugar spikes and worsen insulin resistance, a key issue in PCOS."
    "Pickled in Refined Vinegars or Oils (Occasionally):Some commercial pickles use refined ingredients that can add pro-inflammatory compounds to the diet, aggravating PCOS symptoms."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tsukemono",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
        ),

        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets5/images5/ook.jpeg', height: 200,width: 150,fit: BoxFit.cover,),
                ),
              ),

              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child:Padding(padding: EdgeInsets.only(left: 20,top: 10),
                  child: Text('Nutrients per 1 bowl',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.black), // Outline border
                  borderRadius: BorderRadius.circular(5), // Optional: Rounded corners
                ),



                child: DataTable(

                  columns:const[
                    DataColumn(label: Text('Nutrient')),
                    DataColumn(label: Text('Amount per 1 plate')),

                  ] ,
                  rows:const [
                    DataRow(cells: [
                      DataCell(Text('Calorie')),
                      DataCell(Text("15–60 kcal")),

                    ]),

                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("3–12 g ")),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('0–1 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Fiber')),
                      DataCell(Text('1–2 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('1–5 g ')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('0.5–2 g')),
                    ])


                  ],
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(padding: EdgeInsets.only(top: 15,left: 20),


                  child: Text('Effects of Tsukemono',style: TextStyle(fontSize: 20,color: Colors.green.shade800,fontWeight: FontWeight.normal),),),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(10),
                  itemCount: impacts.length,
                  itemBuilder: (context,index){

                    return ListTile(
                      title: Text(impacts[index]),
                    );
                  }

              )

            ],
          ),
        )


    );
  }
}
