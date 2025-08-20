import 'package:flutter/material.dart';

class Singha extends StatefulWidget {
  const Singha({super.key});

  @override
  State<Singha> createState() => _SinghaState();
}

class _SinghaState extends State<Singha> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Singha Beer has a high-calorie content (approximately 150 calories per 330 ml), which can contribute to weight gain and affect diabetes control.",
    "Contains carbohydrates: The beer contains around 13 g of carbohydrates per serving, which can increase blood sugar levels.",
    "Increases insulin resistance: Excessive consumption of Singha Beer and other alcohol can worsen insulin resistance, a key issue in diabetes management.",
    "Disrupts liver function: Regular alcohol consumption can impair liver function, which is crucial in glucose metabolism.",
    "Causes blood sugar spikes: Alcohol, when consumed with high-carb foods, can lead to rapid blood sugar spikes, which are harmful to diabetic patients."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Singha Beer",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.green.shade800)),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets6/images6/singha.jpg', // Replace with the correct image path
                    height: 200,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Nutrients per 1 Glass (330 ml)',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Nutrient')),
                    DataColumn(label: Text('Amount')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Calories')),
                      DataCell(Text("150 kcal")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("13 g")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('1 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fats')),
                      DataCell(Text('0 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium')),
                      DataCell(Text('10 mg')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Effects on Diabetes:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
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
                  })
            ],
          ),
        ));
  }
}
