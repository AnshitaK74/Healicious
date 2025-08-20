import 'package:flutter/material.dart';

class stevia extends StatefulWidget {
  const stevia({super.key});

  @override
  State<stevia> createState() => _steviaState();
}

class _steviaState extends State<stevia> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Gastrointestinal Discomfort: Stevia may cause bloating, nausea, or gas in some individuals, particularly when consumed in large quantities or if you are sensitive to certain compounds in stevia.",
    "Disruption of Gut Microbiota: Some studies suggest that stevia may impact gut bacteria composition, potentially leading to an imbalance in gut flora, which could affect digestion and immunity.",
    "Impact on Insulin Sensitivity: While stevia doesn't raise blood sugar levels directly, consuming it in excess may affect insulin sensitivity over time, particularly in people with gut issues or metabolic concerns.",
    "Possible Allergic Reactions: Some individuals may be allergic to stevia, which could lead to digestive issues, skin irritation, or more severe reactions, especially when consumed in large amounts."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stevia and Gut Health', style: TextStyle(
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
                          'assets3/images4/stevia.webp', height: 250, width: 200, fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(left: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Negative Effects of Stevia on Gut Health', style: TextStyle(
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
                          DataCell(Text('0–5 kcal')), // Minimal impact on calories
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
                      child: Text('Impacts of Stevia on Gut Health', style: TextStyle(
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
