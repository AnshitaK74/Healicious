import 'package:flutter/material.dart';

class ButterPCOS extends StatefulWidget {
  const ButterPCOS({super.key});

  @override
  State<ButterPCOS> createState() => _ButterPCOSState();
}

class _ButterPCOSState extends State<ButterPCOS> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Saturated Fat: Butter is rich in saturated fat, which may promote inflammation and worsen PCOS symptoms.",
    "Raises Cholesterol: Excessive intake may impact heart health, which is already at risk in many PCOS cases.",
    "Weight Gain Risk: Calorie-dense and easy to overconsume, it can contribute to abdominal fat—a trigger for hormonal imbalance.",
    "Hormonal Disruption: Like other animal fats, butter may affect estrogen and androgen balance in sensitive individuals.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Butter',
          style: TextStyle(
            fontSize: 32,
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
                      'assets2/images2/butter.jpeg', // Update with actual image path
                      height: 250,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 100gm',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800,
                    ),
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
                      DataCell(Text('717 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('0.1 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('0.9 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('81 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fibre')),
                      DataCell(Text('0 g')),
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
                    'Effect of Butter ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800,
                    ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
