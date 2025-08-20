import 'package:flutter/material.dart';

class FridayPCOSThai1 extends StatefulWidget {
  const FridayPCOSThai1({super.key});

  @override
  State<FridayPCOSThai1> createState() => _FridayPCOSThai1State();
}

class _FridayPCOSThai1State extends State<FridayPCOSThai1> {
  final List<String> breakfast = [
    "1 bowl Thai-style vegetable congee (no added sugar)",
    "Calories: 180 kcal",
    "Carbohydrates: 22 g",
    "Protein: 6 g",
    "Fats: 5 g",
    "Fibre: 3 g",
    "1 glass unsweetened almond milk",
    "Calories: 40 kcal",
    "Carbohydrates: 2 g",
    "Protein: 1 g",
    "Fats: 3 g",
    "Fibre: 1 g"
  ];

  final List<String> lunch = [
    "1 bowl Thai lemongrass tofu soup",
    "Calories: 150 kcal",
    "Carbohydrates: 10 g",
    "Protein: 10 g",
    "Fats: 8 g",
    "Fibre: 2 g",
    "1 small bowl of steamed red rice",
    "Calories: 110 kcal",
    "Carbohydrates: 22 g",
    "Protein: 2 g",
    "Fats: 1 g",
    "Fibre: 2 g",
    "1 cup Thai raw papaya salad (no sugar, less peanuts)",
    "Calories: 80 kcal",
    "Carbohydrates: 10 g",
    "Protein: 2 g",
    "Fats: 4 g",
    "Fibre: 3 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai-style stir-fried tofu and broccoli with garlic",
    "Calories: 220 kcal",
    "Carbohydrates: 12 g",
    "Protein: 14 g",
    "Fats: 12 g",
    "Fibre: 4 g",
    "1 small serving steamed green beans and mushrooms",
    "Calories: 60 kcal",
    "Carbohydrates: 7 g",
    "Protein: 2 g",
    "Fats: 2 g",
    "Fibre: 3 g"
  ];

  bool isMainFoodItem(String text) {
    return !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("protein") &&
        !text.toLowerCase().contains("fats") &&
        !text.toLowerCase().contains("fibre");
  }

  Widget buildMealSection(String title, String imagePath, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.w600)),

          const SizedBox(height: 10),
          Center(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final isFood = isMainFoodItem(items[index]);
              return ListTile(
                dense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: Text(
                  items[index],
                  style: TextStyle(
                    fontWeight: isFood ? FontWeight.bold : FontWeight.normal,
                    color: isFood ? Colors.green.shade700 : Colors.black87,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thursday',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.green.shade800),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green.shade800),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildMealSection(
                "BREAKFAST", 'assets20/images20/b.jpeg', breakfast),
            buildMealSection("LUNCH", 'assets20/images20/h.jpeg', lunch),
            buildMealSection("DINNER", 'assets20/images20/h.jpeg', dinner),
          ],
        ),
      ),
    );
  }
}
