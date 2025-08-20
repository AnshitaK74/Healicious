import 'package:flutter/material.dart';
class gyoza extends StatefulWidget {
  const gyoza({super.key});

  @override
  State<gyoza> createState() => _gyozaState();
}

class _gyozaState extends State<gyoza> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Refined Carbohydrates:The wrappers are made from refined white flour, which can spike blood sugar and insulin, promoting fat storage and hunger."
    "High in Sodium:Gyoza filling and dipping sauces (soy sauce, chili oil, etc.) are very salty. High sodium intake is linked to water retention and may contribute to high blood pressure, a common obesity-related issue."
    "High Energy Density:Gyoza packs a lot of calories into a small volume of food. This means you consume a high number of calories without feeling full, which can lead to overeating and weight gain."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gyoza',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
        ),

        body:SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 18),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets5/images5/gyoza.jpeg',height: 250,width: 200,fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('Nutrients per 1 plate',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.black), // Outline border
                  borderRadius: BorderRadius.circular(5), // Optional: Rounded corners
                ),
                child: DataTable(columns: const[
                  DataColumn(label: Text('Nutrient')),
                  DataColumn(label: Text('Amount per 1 plate')),
                ],
                  rows:const [
                    DataRow(cells: [
                      DataCell(Text('Calories')),
                      DataCell(Text('400–500 kcal')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('35–45 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('15–20 g'))

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('20–25 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Fibre')),
                      DataCell(Text('2–4 g'))

                    ])
                  ],
                ),
              ),

              SizedBox(height: 28,),
              Padding(padding: EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('Effect of Gyoza',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
                ),
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
