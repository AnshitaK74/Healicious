import 'package:flutter/material.dart';

class pohpiatod extends StatefulWidget {
  const pohpiatod({super.key});

  @override
  State<pohpiatod> createState() => _pohpiatodState();
}

class _pohpiatodState extends State<pohpiatod> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in fat: Deep-fried preparation adds a significant amount of unhealthy fats.",
    "Calorie dense: Each roll may contain 150–200 kcal, and people often consume multiple rolls at once.",
    "Low fiber and protein: Doesn’t provide enough satiety, increasing the chance of overeating.",
    "Refined flour wrapper: Contributes to quick spikes in blood sugar and fat accumulation.",
    "Often paired with sugary sauces: Dipping sauces add extra sugar and calories, worsening the impact on weight gain.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Poh Pia Tod',
          style: TextStyle(
            fontSize: 28,
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
                      'assets20/images20/poh.jpeg', // Replace with actual path
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
                  'Nutrients per 2 rolls (approx)',
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
                      DataCell(Text('300–400 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates')),
                      DataCell(Text('30–40 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('18–25 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein')),
                      DataCell(Text('5–8 g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber')),
                      DataCell(Text('2–3 g')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Poh Pia Tod on Obesity',
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
