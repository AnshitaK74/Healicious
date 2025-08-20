import 'package:flutter/material.dart';

class saturdayddl extends StatefulWidget {
  const saturdayddl({super.key});

  @override
  State<saturdayddl> createState() => _saturdayddlState();
}

class _saturdayddlState extends State<saturdayddl> {
  final List<String> breakfast = [
    "1 bowl Thai-style steamed sticky rice with mango (small portion, no sugar)",
    "Calories: 200 kcal",
    "Carbohydrates: 35 g",
    "Protein: 3 g",
    "Fats: 5 g",
    "Fibre: 1 g",
    "1 cup lemongrass tea (unsweetened)",
    "Calories: 0 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl Thai pumpkin curry (low-fat coconut milk, tofu added)",
    "Calories: 180 kcal",
    "Carbohydrates: 18 g",
    "Protein: 7 g",
    "Fats: 9 g",
    "Fibre: 3 g",
    "1 medium bowl red rice",
    "Calories: 160 kcal",
    "Carbohydrates: 30 g",
    "Protein: 4 g",
    "Fats: 2 g",
    "Fibre: 2 g",
    "1 cup green papaya salad (Som Tum style, low spice)",
    "Calories: 50 kcal",
    "Carbohydrates: 6 g",
    "Protein: 1 g",
    "Fats: 2 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai vegetable clear soup (baby corn, mushrooms, spinach)",
    "Calories: 80 kcal",
    "Carbohydrates: 10 g",
    "Protein: 3 g",
    "Fats: 3 g",
    "Fibre: 3 g",
    "1 cup stir-fried tofu with Thai holy basil",
    "Calories: 100 kcal",
    "Carbohydrates: 6 g",
    "Protein: 8 g",
    "Fats: 5 g",
    "Fibre: 2 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Saturday',
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
                      'assets20/images20/h.jpeg',
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
