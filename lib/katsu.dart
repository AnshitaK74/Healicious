import 'package:flutter/material.dart';
class katsu extends StatefulWidget {
  const katsu({super.key});

  @override
  State<katsu> createState() => _katsuState();
}

class _katsuState extends State<katsu> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Deep-Frying Adds Unhealthy Fats:Absorbs a significant amount of oil during frying and these oils may be reused in restaurants, increasing oxidized fats, which contribute to inflammation and insulin resistance which is worst for weight gain."
    "Often Paired with Starchy Sides:Usually served with white rice, curry, or bread, adding refined carbs.and this combo spikes blood glucose and insulin, promoting fat storage."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menchi Katsu',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
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
                    child: Image.asset('assets5/images5/ww.jpg',height: 250,width: 200,fit: BoxFit.cover,),
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
                      DataCell(Text('500–650 kcal')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('20–30 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('20–25 g'))

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('35–45 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Fibre')),
                      DataCell(Text('<2 g'))

                    ])
                  ],
                ),
              ),

              SizedBox(height: 28,),
              Padding(padding: EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('Effect of Menchi katsu',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
