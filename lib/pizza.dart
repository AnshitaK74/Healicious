import 'package:flutter/material.dart';
class pizza extends StatefulWidget {
  const pizza({super.key});

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in refined carbs (crust) : spikes insulin levels",
    "Contains saturated fats (cheese, meat toppings) : increases inflammation",
    "Often high in sodium : can lead to bloating and water retention",
    "Low in fiber : poor blood sugar control",
    "Calorie-dense : contributes to weight gain",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PIZZA', style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: 32),),
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
                        child: Image.asset(
                          'assets2/images2/pizza.jpg', height: 200,
                          width: 150,
                          fit: BoxFit.cover,),
                      ),
                    ),
                    SizedBox(height: 28),
                    Padding(padding: EdgeInsets.only(left: 14),

                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Nutrients per 100gm', style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.green.shade800)),
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
                            DataCell(Text('260-300 kcal')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Carbohydrates')),
                            DataCell(Text('33-36 g')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Protein')),
                            DataCell(Text('10-12 g')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('fat')),
                            DataCell(Text('10-12 g')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('cholestrol')),
                            DataCell(Text('20-25 mg')),
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
                          style: TextStyle(fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.green.shade800),
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
      ),
    );
  }
}