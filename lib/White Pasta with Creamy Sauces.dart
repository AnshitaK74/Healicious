import 'package:flutter/material.dart';

class WhiteCreamyPasta extends StatefulWidget {
  const WhiteCreamyPasta({super.key});

  @override
  State<WhiteCreamyPasta> createState() => _WhiteCreamyPastaState();
}

class _WhiteCreamyPastaState extends State<WhiteCreamyPasta> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Refined Carbs: White pasta is made from refined flour, which spikes blood sugar and insulin levels—problematic for insulin resistance in PCOS.",
    "High Saturated Fat: Cream-based sauces like Alfredo and Carbonara are loaded with saturated fats that can worsen hormonal imbalances.",
    "Low Fiber: Lack of fiber makes it harder to manage blood glucose and appetite control in PCOS.",
    "High Calories, Low Nutrients: The meal is calorie-dense with little nutritional value, contributing to weight gain.",
    "Inflammatory Ingredients: Cheese, butter, and cream can promote systemic inflammation, which is already elevated in PCOS."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'White Creamy Pasta',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
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
                    'assets10/images10/m.jpeg', // Replace with actual image path
                    height: 250,
                    width: 200,
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
                  'Nutrients per 1 plate',
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
                  DataCell(Text('400–600 kcal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carbohydrates')),
                  DataCell(Text('50–70 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fat')),
                  DataCell(Text('20–30 g')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Protein')),
                  DataCell(Text('10–15 g')),
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
                  'Effect of Creamy White Pasta ',
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

                    child: ListTile(

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
