import 'package:flutter/material.dart';

class khaiYatSai extends StatefulWidget {
  const khaiYatSai({super.key});

  @override
  State<khaiYatSai> createState() => _khaiYatSaiState();
}

class _khaiYatSaiState extends State<khaiYatSai> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Low in Fiber: Khai Yat Sai is low in fiber, which can contribute to constipation and slow digestion. Fiber is essential for gut health and regular bowel movements.",
    "High in Fat: The high-fat content of Khai Yat Sai, especially if deep-fried, may lead to discomfort in the gut, causing bloating and indigestion in sensitive individuals.",
    "Potential for Gut Inflammation: Regular consumption of high-fat, fried foods may contribute to low-grade inflammation in the gut, exacerbating digestive issues.",
    "Increased Risk of Gut Dysbiosis: The high-fat, low-fiber nature of Khai Yat Sai can disrupt the balance of gut bacteria, leading to dysbiosis and poor digestion.",
    "Slows Digestion: The high-fat content can slow gastric emptying, leading to bloating, heaviness, and poor digestion, especially in those with digestive sensitivities."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Khai Yat Sai',
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
                      'assets2/images2/khai_yat_sai.jpg',
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
                    'Nutrients per 1 piece',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),
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
                      DataCell(Text('150-200 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('5-10 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('8-10 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('10-15 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber')),
                      DataCell(Text('0-1 g')),
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
                    'Effect of Khai Yat Sai on Gut Health',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.green.shade800),
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
