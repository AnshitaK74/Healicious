import 'package:flutter/material.dart';

class umeshu1 extends StatefulWidget {
  const umeshu1({super.key});

  @override
  State<umeshu1> createState() => _umeshu1State();
}

class _umeshu1State extends State<umeshu1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Extremely high in sugar: Made by steeping plums in sugar and alcohol, causing a sharp blood glucose spike.",
    "High in carbohydrates: Contains 20–30g carbs per serving, making it unsuitable for glycemic control.",
    "Can lead to fat accumulation: The sugar-alcohol combination promotes insulin resistance over time.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Umeshu ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
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
                    'assets16/images16/umeshu.jpeg', // Update this path to your assets
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
                  child: Text('Nutrients per 100 ml',
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
                      DataCell(Text("150–200 kcal")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text("20–30 g")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('18–25 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Alcohol')),
                      DataCell(Text('10–14% ABV')),
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
