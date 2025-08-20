import 'package:flutter/material.dart';

class MondayDThaiDD extends StatefulWidget {
  const MondayDThaiDD({super.key});

  @override
  State<MondayDThaiDD> createState() => _MondayDThaiDDState();
}

class _MondayDThaiDDState extends State<MondayDThaiDD> {
  final List<String> breakfast = [
    "1 bowl Thai rice porridge (congee) with ginger & mushrooms",
    "Calories: 160 kcal",
    "Carbohydrates: 28 g",
    "Protein: 4 g",
    "Fats: 2 g",
    "Fibre: 2 g",
    "1 banana (small)",
    "Calories: 89 kcal",
    "Carbohydrates: 23 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 2 g",
    "1 cup warm ginger tea (unsweetened)",
    "Calories: 2 kcal",
    "Carbohydrates: 0.4 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl steamed Thai vegetable curry (no coconut milk)",
    "Calories: 190 kcal",
    "Carbohydrates: 18 g",
    "Protein: 6 g",
    "Fats: 9 g",
    "Fibre: 4 g",
    "1 medium bowl brown rice",
    "Calories: 170 kcal",
    "Carbohydrates: 35 g",
    "Protein: 3 g",
    "Fats: 1 g",
    "Fibre: 2 g",
    "1 bowl raw papaya salad (no fish sauce)",
    "Calories: 60 kcal",
    "Carbohydrates: 7 g",
    "Protein: 1 g",
    "Fats: 2 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "1 bowl stir-fried Thai choy sum with garlic (less oil)",
    "Calories: 140 kcal",
    "Carbohydrates: 8 g",
    "Protein: 5 g",
    "Fats: 7 g",
    "Fibre: 4 g",
    "1 small bowl steamed black rice",
    "Calories: 130 kcal",
    "Carbohydrates: 26 g",
    "Protein: 2 g",
    "Fats: 1 g",
    "Fibre: 3 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monday',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BREAKFAST
            Padding(
              padding: EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets20/images20/b.jpeg',
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: breakfast.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    breakfast[index],
                    style: TextStyle(
                      color: isFoodItem(breakfast[index])
                          ? Colors.green.shade700
                          : Colors.black,
                      fontWeight: isFoodItem(breakfast[index])
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),

            // LUNCH
            Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets20/images20/g.jpeg',
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: lunch.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    lunch[index],
                    style: TextStyle(
                      color: isFoodItem(lunch[index])
                          ? Colors.green.shade700
                          : Colors.black,
                      fontWeight: isFoodItem(lunch[index])
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),

            // DINNER
            Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'DINNER',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets11/images11/c.jpeg',
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dinner.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(2),
                  child: ListTile(
                    title: Text(
                      dinner[index],
                      style: TextStyle(
                        color: isFoodItem(dinner[index])
                            ? Colors.green.shade600
                            : Colors.black,
                        fontWeight: isFoodItem(dinner[index])
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
