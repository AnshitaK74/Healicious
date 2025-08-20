import 'package:flutter/material.dart';

class WednesdayObese extends StatefulWidget {
  const WednesdayObese({super.key});

  @override
  State<WednesdayObese> createState() => _WednesdayObeseState();
}

class _WednesdayObeseState extends State<WednesdayObese> {
  final List<String> breakfast = [
    "2 Boiled eggs",
    "Calories: 140–160 kcal",
    "Protein: 12 g",
    "Carbohydrates: 1 g",
    "Fat: 10 g",
    "Fiber: 0 g",

    "1 Small Bowl of Greek Yogurt with Chia Seeds",
    "Calories: 150–170 kcal",
    "Carbohydrates: 12–14 g",
    "Protein: 12–14 g",
    "Fat: 7–9 g",
    "Fiber: 5 g",
  ];

  final List<String> lunch = [
    "1 Bowl Moong Dal",
    "Calories: 120 kcal",
    "Carbohydrates: 20 g",
    "Protein: 8 g",
    "Fat: 2 g",
    "Fiber: 5 g",

    "1 Bowl White Rice",
    "Calories: 200 kcal",
    "Carbohydrates: 45 g",
    "Protein: 4 g",
    "Fat: 0.3 g",
    "Fiber: 0.6 g",

    "1 Bajra Roti",
    "Calories: 120 kcal",
    "Carbohydrates: 22 g",
    "Protein: 4 g",
    "Fat: 1 g",
    "Fiber: 2 g",
  ];

  final List<String> dinner = [
    "1 Bowl Pulav (Full of vegetables including paneer and soyabean)",
    "Calories: 300–350 kcal",
    "Carbohydrates: 35–40 g",
    "Protein: 20–25 g",
    "Fat: 15–18 g",
    "Fiber: 6–8 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') &&
        !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("fiber") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("fat") &&
        !text.toLowerCase().contains("protein");
  }

  Widget buildMealSection(String title, String imagePath, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.green.shade800,
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                items[index],
                style: TextStyle(
                  color: isFoodItem(items[index])
                      ? Colors.green.shade700
                      : Colors.black,
                  fontWeight: isFoodItem(items[index])
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wednesday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildMealSection('BREAKFAST', 'assets4/img4/egg.jpeg', breakfast),
            buildMealSection('LUNCH', 'assets4/img4/roti.jpeg', lunch),
            buildMealSection('DINNER', 'assets4/img4/rice.jpeg', dinner),
          ],
        ),
      ),
    );
  }
}
