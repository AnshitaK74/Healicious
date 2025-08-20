import 'package:flutter/material.dart';

class sucralose extends StatefulWidget {
  const sucralose({super.key});

  @override
  State<sucralose> createState() => _sucraloseState();
}

class _sucraloseState extends State<sucralose> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Gut Flora Disruption: Sucralose may disturb the balance of gut microbiota, leading to digestive problems such as bloating, gas, and discomfort.",
    "Increased Gut Inflammation: Studies suggest that sucralose may cause gut inflammation, potentially exacerbating conditions like irritable bowel syndrome (IBS) or Crohn's disease.",
    "Digestive Sensitivity: Sucralose may irritate the stomach lining, contributing to symptoms such as nausea, cramps, and general gastrointestinal discomfort.",
    "Affecting Absorption: Some studies have shown that sucralose might impair the absorption of nutrients, further impacting overall gut health and digestion."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sucralose and Gut Health', style: TextStyle(
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
                          'assets3/images4/sucralose.webp', height: 250, width: 200, fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(left: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Negative Effects of Sucralose on Gut Health', style: TextStyle(
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
                          DataCell(Text('0 kcal')), // Sucralose has no calories
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
                      child: Text('Impacts of Sucralose on Gut Health', style: TextStyle(
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
