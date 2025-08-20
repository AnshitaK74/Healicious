import 'package:flutter/material.dart';

class fridaychinagut extends StatefulWidget {
  const fridaychinagut({super.key});

  @override
  State<fridaychinagut> createState() => _fridaychinagutState();
}

class _fridaychinagutState extends State<fridaychinagut> {
  final List<String> breakfast = [
    "1 bowl of congee with mung beans:\n"
        "Calories: 120 kcal\n"
        "Protein: 3 g\n"
        "Carbohydrates: 24 g\n"
        "Fibre: 3 g\n"
        "Fats: 1 g",

    "1 small bowl of steamed Chinese pumpkin:\n"
        "Calories: 70 kcal\n"
        "Protein: 1 g\n"
        "Carbohydrates: 17 g\n"
        "Fibre: 3 g\n"
        "Fats: 0.5 g"
  ];

  final List<String> lunch = [
    "1 plate of stir-fried tofu with bok choy and mushrooms:\n"
        "Calories: 200 kcal\n"
        "Protein: 15 g\n"
        "Carbs: 10 g\n"
        "Fats: 12 g\n"
        "Fiber: 4 g",

    "1 small bowl of miso soup:\n"
        "Calories: 50 kcal\n"
        "Protein: 4 g\n"
        "Carbs: 5 g\n"
        "Fats: 1 g\n"
        "Fiber: 1 g",

    "½ small bowl of quinoa:\n"
        "Calories: 110 kcal\n"
        "Protein: 4 g\n"
        "Carbs: 20 g\n"
        "Fats: 2 g\n"
        "Fiber: 2 g"
  ];

  final List<String> dinner = [
    "1 small plate of steamed shrimp with Chinese cabbage:\n"
        "Calories: 180 kcal\n"
        "Protein: 20 g\n"
        "Carbs: 5 g\n"
        "Fats: 8 g\n"
        "Fiber: 2 g",

    "1 bowl of Chinese winter melon soup:\n"
        "Calories: 60 kcal\n"
        "Protein: 2 g\n"
        "Carbs: 8 g\n"
        "Fats: 1 g\n"
        "Fiber: 2 g"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FRIDAY',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
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
          Column(children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/congee_mungbeans.jpg',
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
                return ListTile(title: Text(breakfast[index]));
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'LUNCH',
                style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/tofubokchoy.jpg',
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
                return ListTile(title: Text(lunch[index] + "\n"));
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'DINNER',
                style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/shrimp_cabbage.jpg',
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
                return ListTile(title: Text(dinner[index]));
              },
            )
          ])
        ]),
      ),
    );
  }
}
