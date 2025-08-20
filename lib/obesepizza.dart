import 'package:flutter/material.dart';

class PizzaInfo extends StatefulWidget {
  const PizzaInfo({super.key});

  @override
  State<PizzaInfo> createState() => _PizzaInfoState();
}

class _PizzaInfoState extends State<PizzaInfo> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in calories: Pizza can be very calorie-dense, especially with toppings like cheese, meat, and extra sauces. Overconsumption can lead to excessive calorie intake and contribute to weight gain.",
    "High in fat: Many pizzas, especially those with extra cheese or meat toppings, are high in saturated fats, which can contribute to unhealthy weight gain and increase the risk of obesity-related diseases.",
    "Refined carbohydrates: The crust of many pizzas is made from refined flour, which can cause blood sugar spikes and contribute to fat storage when consumed in excess.",
    "High in sodium: Pizzas, especially from fast food or chain restaurants, are often very high in sodium, which can lead to water retention and bloating, potentially affecting weight management.",
    "Low in fiber: Pizza typically lacks enough fiber from vegetables and whole grains, which can affect digestion and contribute to overeating, making it harder to control portion sizes and prevent obesity.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PIZZA',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red.shade800,
              fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets3/images4/pizza.jpg', // Update path as needed
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nutrients per 1 serving (approx.)',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.red.shade800)),
              ),
            ),
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
                    DataCell(Text('250–350 kcal')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates')),
                    DataCell(Text('30–40 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein')),
                    DataCell(Text('10–15 g')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sodium')),
                    DataCell(Text('500–800 mg')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat')),
                    DataCell(Text('10–20 g')),
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
                  'Negative Effects on Obesity',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.red.shade800),
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
                    leading: Icon(Icons.warning_amber_rounded,
                        color: Colors.red),
                    title: Text(impacts[index]),
                  ),
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}
