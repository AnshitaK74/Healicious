import 'package:flutter/material.dart';

class YogurtImpact extends StatefulWidget {
  const YogurtImpact({super.key});

  @override
  State<YogurtImpact> createState() => _YogurtImpactState();
}

class _YogurtImpactState extends State<YogurtImpact> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Lactose Intolerance: Many individuals with lactose intolerance may experience bloating, diarrhea, and stomach cramps when consuming yogurt containing lactose.",
    "Gut Health: Yogurt, especially when containing probiotics (live bacteria), can benefit gut health by improving digestion, boosting immunity, and balancing gut bacteria.",
    "High Sugar Content: Some flavored yogurts contain high levels of added sugars, which may disrupt gut health by feeding harmful bacteria and yeast in the intestines.",
    "Protein Source: Yogurt is a good source of protein, which helps in tissue repair and muscle maintenance, but excessive intake can cause discomfort for some people, especially those with sensitive digestion.",
    "Acidity: Some yogurt varieties have high acidity which may cause discomfort for individuals with acid reflux or sensitive stomachs.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yogurt',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: 32,
          ),
        ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets16/images16/yoga.jpeg', // Replace with the correct image path
                    height: 200,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 28),
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 1 serving of Yogurt',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.green.shade800),
                  ),
                ),
              ),
              SizedBox(height: 30,),
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
                      DataCell(Text('Calories')),
                      DataCell(Text('120–150 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('15–20 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('8–10 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium')),
                      DataCell(Text('50–80 mg')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('3–5 g')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Yogurt',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
