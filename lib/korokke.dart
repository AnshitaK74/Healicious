import 'package:flutter/material.dart';
class korokke extends StatefulWidget {
  const korokke({super.key});

  @override
  State<korokke> createState() => _korokkeState();
}

class _korokkeState extends State<korokke> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts=[
    " Carb-Heavy, Low in Protein:Korokke made with mashed potatoes or bread crumbs is mostly composed of carbs, with relatively low protein content and carbohydrates, especially from refined sources (like potatoes and bread crumbs), can cause blood sugar spikes and promote fat storage.",
    "Lack of Satiety:Even though korokke can be calorie-dense, it doesn’t provide long-lasting satiety because it’s low in fiber and protein, making you feel hungry again soon after eating and this can result in snacking or overeating later in the day, contributing to weight gain.",
    " Increase in Belly Fat and Visceral Fat:Korokke is often associated with the accumulation of belly fat due to the combination of calorie-dense fats and refined carbs visceral fat, the fat that accumulates around the organs, is particularly concerning for long-term health as it is linked to increased risks of type 2 diabetes, heart disease, and other obesity-related conditions.",
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('korokke',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.green.shade800),),
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
                      DataCell(Text('400–500 kcal')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('45–55 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('8–12 g'))

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('20–30 g')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('Fibre')),
                      DataCell(Text('4–6 g'))

                    ])
                  ],
                ),
              ),

              SizedBox(height: 28,),
              Padding(padding: EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('Effect of korokke',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.green.shade800),),
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
              )
            ],
          ),
        )
    );
  }
}
