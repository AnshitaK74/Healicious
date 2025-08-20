import 'package:flutter/material.dart';

class tt extends StatefulWidget {
  const tt({super.key});

  @override
  State<tt> createState() => _ttState();
}

class _ttState extends State<tt> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Increased Inflammation:The excessive salt in Tsukemono contributes to systemic inflammation. Since PCOS is already linked to chronic low-grade inflammation, this can exacerbate issues like insulin resistance and weight gain.",
    "High Sodium Content:Tsukemono is typically very high in sodium, which can lead to water retention, bloating, and increased blood pressure. Excessive sodium intake can worsen insulin resistance and contribute to the inflammation already present in women with PCOS.",
    "Digestive Issues:Pickled vegetables can be hard on the digestive system for some people, especially if you have a sensitive stomach or issues like IBS. The acidic nature of Tsukemono might cause discomfort or worsen digestive symptoms in some women with PCOS.",
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
                  child: Image.asset('assets5/images5/tt.jpg', height: 200,width: 150,fit: BoxFit.cover,),
                ),
              ),

              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child:Padding(padding: EdgeInsets.only(left: 20,top: 10),
                  child: Text('Nutrients per 1 piece',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
                    DataColumn(label: Text('Amount per 1 piece')),

                  ] ,
                  rows:const [
                    DataRow(cells: [
                      DataCell(Text('Calorie')),
                      DataCell(Text("	10–25 kcal")),

                    ]),

                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("2–5 g ")),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('<1 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Fiber')),
                      DataCell(Text('	1–2 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('	1–2 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('<1 g')),
                    ])


                  ],
                ),
              ),
              SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(padding: EdgeInsets.only(top: 15,left: 20),


                  child: Text('Effects of Tsukemono',style: TextStyle(fontSize: 20,color: Colors.green.shade800,fontWeight: FontWeight.normal),),),
              ),
          ),
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
                },
              ),

            ],
          ),
        )


    );
  }
}