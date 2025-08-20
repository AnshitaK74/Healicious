import 'package:flutter/material.dart';

class PizzaProcessedMeats extends StatefulWidget {
  const PizzaProcessedMeats({super.key});

  @override
  State<PizzaProcessedMeats> createState() => _PizzaProcessedMeatsState();
}

class _PizzaProcessedMeatsState extends State<PizzaProcessedMeats> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbs: Pizza crust is typically made from white flour, which can spike insulin levels—harmful for PCOS.",
    "Processed Meats: Toppings like pepperoni, sausage, and ham are high in sodium, preservatives, and saturated fats, all of which can disrupt hormones and increase inflammation.",
    "High Saturated Fat: Cheese and meat toppings are loaded with saturated fats that worsen insulin resistance.",
    "Low in Fiber: This type of pizza provides very little fiber, making it harder to regulate blood sugar.",
    "High Calorie Load: Calorie-dense with little nutritional benefit, contributing to weight gain and poor metabolic control."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pizza with Processed Meats',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets10/images10/n.jpeg', // Replace with actual image path
                    height: 250,
                    width: 220,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 2 slices',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(columns: const [
                DataColumn(label: Text('Nutrient')),
                DataColumn(label: Text('Amount')),
              ], rows: const [
                DataRow(cells: [
                  DataCell(Text('Calories')),
                  DataCell(Text('500–600 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('50–60 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('25–30 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('18–22 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fibre')),
                  DataCell(Text('2–3 g')),
                ]),
              ]),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Pizza with Processed Meats ',
                  style: TextStyle(
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
                return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                child:  ListTile(

                  title: Text(impacts[index]),
                )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
