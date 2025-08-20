import 'package:flutter/material.dart';

class aspartame extends StatefulWidget {
  const aspartame({super.key});

  @override
  State<aspartame> createState() => _aspartameState();
}

class _aspartameState extends State<aspartame> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Gut Disruption: Aspartame may alter the balance of gut bacteria, potentially leading to digestive issues such as bloating, gas, and discomfort.",
    "Increased Inflammation: Some studies suggest that aspartame may increase gut inflammation, worsening conditions like IBS or leaky gut.",
    "Gut Irritation: The artificial sweetener may irritate the stomach lining, leading to symptoms like nausea, cramps, or digestive upset.",
    "Blood Sugar Fluctuations: Though marketed as a low-calorie alternative, aspartame can trigger insulin resistance over time, indirectly affecting gut health."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aspartame and Gut Health', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
              fontSize: 32),),
        ),
        body: SingleChildScrollView(
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
                        child: Image.asset(
                          'assets3/images4/aspartame.webp', height: 250, width: 200, fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(left: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Negative Effects of Aspartame on Gut Health', style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.green.shade800),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black), // Outline border
                      borderRadius: BorderRadius.circular(5), // Optional: Rounded corners
                    ),
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Nutrient')),
                        DataColumn(label: Text('Amount per 1 serving')),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('Calories')),
                          DataCell(Text('0 kcal')), // Aspartame has no calories
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Carbohydrates')),
                          DataCell(Text('0g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Protein')),
                          DataCell(Text('0g')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Fat')),
                          DataCell(Text('0g')),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 28,),
                  Padding(padding: EdgeInsets.only(left: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Impacts of Aspartame on Gut Health', style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.green.shade800),
                      ),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(10),
                      itemCount: impacts.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(impacts[index]),
                        );
                      }
                  )
                ]
            )
        )
    );
  }
}
