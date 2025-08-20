import 'package:flutter/material.dart';

class wednesdayddl extends StatefulWidget {
  const wednesdayddl({super.key});

  @override
  State<wednesdayddl> createState() => _wednesdayddlState();
}

class _wednesdayddlState extends State<wednesdayddl> {
  final List<String> breakfast = [
    "1 bowl Thai-style clear vegetable soup with tofu cubes",
    "Calories: 160 kcal",
    "Carbohydrates: 10 g",
    "Protein: 10 g",
    "Fats: 8 g",
    "Fibre: 3 g",
    "1 small banana",
    "Calories: 90 kcal",
    "Carbohydrates: 23 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 2 g",
    "1 cup Thai ginger tea (no sugar)",
    "Calories: 2 kcal",
    "Carbohydrates: 0.5 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl Thai grilled shrimp salad (som tum style, low oil)",
    "Calories: 220 kcal",
    "Carbohydrates: 10 g",
    "Protein: 25 g",
    "Fats: 9 g",
    "Fibre: 3 g",
    "1 medium bowl jasmine brown rice",
    "Calories: 140 kcal",
    "Carbohydrates: 28 g",
    "Protein: 3 g",
    "Fats: 1 g",
    "Fibre: 2 g",
    "1 cup steamed mixed vegetables with chili-lime dressing",
    "Calories: 80 kcal",
    "Carbohydrates: 9 g",
    "Protein: 2 g",
    "Fats: 3 g",
    "Fibre: 3 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai spicy lentil curry (low oil)",
    "Calories: 200 kcal",
    "Carbohydrates: 18 g",
    "Protein: 12 g",
    "Fats: 8 g",
    "Fibre: 4 g",
    "1 small bowl stir-fried kale with garlic",
    "Calories: 100 kcal",
    "Carbohydrates: 6 g",
    "Protein: 3 g",
    "Fats: 7 g",
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
            'Wednesday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('BREAKFAST',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
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
                        title: Text(breakfast[index],
                            style: TextStyle(
                              color: isFoodItem(breakfast[index])
                                  ? Colors.green.shade700
                                  : Colors.black,
                              fontWeight: isFoodItem(breakfast[index])
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            )),
                      );
                    }),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Transform.translate(
                    offset: Offset(16, 0),
                    child: Text('LUNCH',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.normal,
                            fontSize: 20)),
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
                        title: Text(lunch[index],
                            style: TextStyle(
                              color: isFoodItem(lunch[index])
                                  ? Colors.green.shade700
                                  : Colors.black,
                              fontWeight: isFoodItem(lunch[index])
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            )),
                      );
                    }),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Transform.translate(
                    offset: Offset(16, 0),
                    child: Text('DINNER',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.normal,
                            fontSize: 20)),
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
                    itemCount: dinner.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2),
                        child: ListTile(
                            title: Text(dinner[index],
                                style: TextStyle(
                                  color: isFoodItem(dinner[index])
                                      ? Colors.green.shade600
                                      : Colors.black,
                                  fontWeight: isFoodItem(dinner[index])
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ))),
                      );
                    }),
              ])
            ])));
  }
}
