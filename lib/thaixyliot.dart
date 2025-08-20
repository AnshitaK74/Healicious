import 'package:flutter/material.dart';

class xylitol extends StatefulWidget {
  const xylitol({super.key});

  @override
  State<xylitol> createState() => _xylitolState();
}

class _xylitolState extends State<xylitol> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Gastrointestinal Distress: Xylitol can cause bloating, diarrhea, and cramps, especially in people with sensitive digestive systems. This is due to its incomplete absorption in the intestine.",
    "Fermentation in Gut: Xylitol is fermented by bacteria in the large intestine, leading to the production of gas, which can contribute to bloating and discomfort.",
    "Laxative Effect: When consumed in excess, xylitol has a laxative effect, leading to diarrhea and dehydration, which can negatively affect gut health.",
    "Disruption of Gut Microbiota: Some studies suggest that xylitol may alter the balance of gut bacteria, potentially impairing gut flora diversity, which can influence digestion and overall gut health."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Xylitol and Gut Health', style: TextStyle(
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
                          'assets3/images4/xylitol.webp', height: 250, width: 200, fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(left: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Negative Effects of Xylitol on Gut Health', style: TextStyle(
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
                          DataCell(Text('0–20 kcal')), // Varies based on the amount consumed
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Carbohydrates')),
                          DataCell(Text('4g per tsp')),
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
                      child: Text('Impacts of Xylitol on Gut Health', style: TextStyle(
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
