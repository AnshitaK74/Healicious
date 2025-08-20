import 'package:flutter/material.dart';

class fridaydiabetesthai2 extends StatefulWidget {
  const fridaydiabetesthai2({super.key});

  @override
  State<fridaydiabetesthai2> createState() => _fridaydiabetesthai2State();
}

class _fridaydiabetesthai2State extends State<fridaydiabetesthai2> {
  final List<String> breakfast = [
    "1 bowl Thai brown rice porridge with vegetables",
    "Calories: 180 kcal",
    "Carbohydrates: 24 g",
    "Protein: 6 g",
    "Fats: 5 g",
    "Fibre: 3 g",
    "1 boiled egg",
    "Calories: 70 kcal",
    "Carbohydrates: 0.6 g",
    "Protein: 6 g",
    "Fats: 5 g",
    "Fibre: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl Thai clear soup with chicken and vegetables",
    "Calories: 160 kcal",
    "Carbohydrates: 8 g",
    "Protein: 18 g",
    "Fats: 6 g",
    "Fibre: 2 g",
    "1 small bowl brown rice",
    "Calories: 110 kcal",
    "Carbohydrates: 22 g",
    "Protein: 2.5 g",
    "Fats: 0.8 g",
    "Fibre: 1.5 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai tofu and vegetable stir-fry (light oil)",
    "Calories: 200 kcal",
    "Carbohydrates: 12 g",
    "Protein: 14 g",
    "Fats: 10 g",
    "Fibre: 4 g",
    "1 cup papaya salad (Som Tum, no sugar)",
    "Calories: 60 kcal",
    "Carbohydrates: 7 g",
    "Protein: 1 g",
    "Fats: 3 g",
    "Fibre: 2 g"
  ];

  bool isFoodItem(String text) {
    return !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("protein") &&
        !text.toLowerCase().contains("fats") &&
        !text.toLowerCase().contains("fibre");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mealSection(
                  title: 'BREAKFAST',
                  imagePath: 'ssets20/images20/h.jpeg',
                  items: breakfast),
              mealSection(
                  title: 'LUNCH',
                  imagePath: 'assets20/images20/h.jpeg',
                  items: lunch),
              mealSection(
                  title: 'DINNER',
                  imagePath: 'assets20/images20/i.jpeg',
                  items: dinner),
            ],
          ),
        ),
      ),
    );
  }

  Widget mealSection({
    required String title,
    required String imagePath,
    required List<String> items,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.green.shade800)),
          SizedBox(height: 10),
          Center(
            child: Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final isFood = isFoodItem(items[index]);
              return ListTile(
                title: Text(
                  items[index],
                  style: TextStyle(
                    color: isFood ? Colors.green.shade700 : Colors.black,
                    fontWeight: isFood ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
