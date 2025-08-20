import 'package:flutter/material.dart';

class Sangsom extends StatefulWidget {
  const Sangsom({super.key});

  @override
  State<Sangsom> createState() => _SangsomState();
}

class _SangsomState extends State<Sangsom> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Sangsom rum contains a significant amount of calories (approximately 100-150 calories per 1.5 oz serving), which can contribute to weight gain, a major risk factor for diabetes.",
    "Contains sugar: The rum contains added sugars, which can raise blood glucose levels and lead to poor blood sugar control in diabetic individuals.",
    "Affects liver function: Excessive alcohol consumption, like Sangsom, can harm the liver, which plays a crucial role in glucose metabolism.",
    "Increases insulin resistance: Consuming alcohol in large amounts may worsen insulin resistance, making it more difficult for the body to regulate blood sugar levels.",
    "Causes blood sugar fluctuations: Alcohol, especially when mixed with sugary mixers, can cause significant fluctuations in blood sugar levels, increasing the risk of diabetic complications."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sangsom Rum",
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
                    'assets6/images6/sangsom.jpg', // Replace with the correct image path
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
                  child: Text('Nutrients per 1 Glass (45 ml)',
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
                      DataCell(Text("100–150 kcal")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("5–10 g")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('5–8 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fats')),
                      DataCell(Text('0 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium')),
                      DataCell(Text('5 mg')),
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
