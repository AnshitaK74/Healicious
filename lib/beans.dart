import 'package:flutter/material.dart';

class RefriedBeans extends StatefulWidget {
  const RefriedBeans({super.key});

  @override
  State<RefriedBeans> createState() => _RefriedBeansState();
}

class _RefriedBeansState extends State<RefriedBeans> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Lard-Based Fats: Traditionally made with pork lard, increasing saturated fat and inflammation.",
    "Low Fiber in Canned Versions: Some processed refried beans have removed skins, lowering fiber content crucial for PCOS.",
    "Preservatives & Additives: Canned versions often contain chemical stabilizers that disrupt gut flora and hormones.",
    "High Sodium: Elevated salt levels can increase water retention and blood pressure.",
    "Excess Calories with Few Nutrients: Overconsumption may lead to weight gain and insulin resistance.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Refried Beans',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 14),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets7/images7/beans.jpg', // Replace with actual image path
                      height: 250,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1/2 cup canned refried beans ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: 30),
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
                      DataCell(Text('210 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('22 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber')),
                      DataCell(Text('5 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('10 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('7 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium')),
                      DataCell(Text('580 mg')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Refried Beans ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.green.shade800,
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
