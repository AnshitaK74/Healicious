import 'package:flutter/material.dart';
class takoyaki extends StatefulWidget {
  const takoyaki({super.key});

  @override
  State<takoyaki> createState() => _takoyakiState();
}

class _takoyakiState extends State<takoyaki> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    "Low Satiety:Despite its calorie load, takoyaki isn’t very filling. It's low in fiber and can lead to overeating or snacking soon after which can lead to weight gain."
    "Frequent Consumption Can Add Up:As an occasional treat, takoyaki is not harmful. But frequent consumption, especially combined with a sedentary lifestyle, increases the risk of caloric surplus and weight gain."
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Takoyaki',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
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
                    child: Image.asset('assets5/images5/an.jpeg',height: 250,width: 200,fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('Nutrients per 1 bowl',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
                  DataColumn(label: Text('Amount per 1 bowl')),
                ],
                  rows:const [
                    DataRow(cells: [
                      DataCell(Text('Calories')),
                      DataCell(Text('350–500 kcal')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('35–45 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('10–15 g'))

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('15–25 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Fibre')),
                      DataCell(Text('1–2 g'))

                    ])
                  ],
                ),
              ),

              SizedBox(height: 28,),
              Padding(padding: EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('Effect of Takoyaki',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
