import 'package:flutter/material.dart';
class ramen2 extends StatefulWidget {
  const ramen2({super.key});

  @override
  State<ramen2> createState() => _ramen2State();
}

class _ramen2State extends State<ramen2> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "High Calorie Density:A bowl of ramen can contain 450–600+ kcal, especially with fatty broth (like tonkotsu) and rich toppings (e.g., pork belly, egg, and noodles) and frequent intake without balancing overall calories can lead to weight gain."
    " Refined Carbohydrates:Ramen noodles are usually made from refined wheat flour, which digests quickly and causes blood sugar spikes and these spikes can lead to increased fat storage, cravings, and overeating."
    " High Fat and Saturated Fat:Especially in creamy broths like tonkotsu or miso, ramen can contain 15–25g of fat, with a notable amount of saturated fat from pork and oils and diets high in saturated fats are linked to visceral fat buildup and increased obesity risk."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ramen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
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
                    child: Image.asset('assets5/images5/love.jpeg',height: 250,width: 200,fit: BoxFit.cover,),
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
                      DataCell(Text('450–600 kcal')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('50–70 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Fibre')),
                      DataCell(Text('2–5 g' ))

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('15–25 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('15–25 g'))

                    ])
                  ],
                ),
              ),

              SizedBox(height: 28,),
              Padding(padding: EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('Effect of Ramen',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
