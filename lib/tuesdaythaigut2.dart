import 'package:flutter/material.dart';

class TuesdayDThaiDDD extends StatefulWidget {
  const TuesdayDThaiDDD({super.key});

  @override
  State<TuesdayDThaiDDD> createState() => _TuesdayDThaiDDDState();
}

class _TuesdayDThaiDDDState extends State<TuesdayDThaiDDD> {
  final List<String> breakfast = [
    "1 bowl Thai rice porridge (congee) with ginger and scallion",
    "Calories: 140 kcal",
    "Carbohydrates: 24 g",
    "Protein: 3 g",
    "Fats: 2 g",
    "Fibre: 1 g",
    "1 boiled egg",
    "Calories: 70 kcal",
    "Carbohydrates: 1 g",
    "Protein: 6 g",
    "Fats: 5 g",
    "Fibre: 0 g",
    "1 cup lemongrass tea (unsweetened)",
    "Calories: 2 kcal",
    "Carbohydrates: 0.5 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl Thai papaya salad (no fish sauce, less chili)",
    "Calories: 90 kcal",
    "Carbohydrates: 12 g",
    "Protein: 1 g",
    "Fats: 4 g",
    "Fibre: 3 g",
    "1 bowl steamed jasmine rice (small portion)",
    "Calories: 110 kcal",
    "Carbohydrates: 23 g",
    "Protein: 2 g",
    "Fats: 1 g",
    "Fibre: 1 g",
    "1 bowl Thai stir-fried bok choy with garlic (less oil)",
    "Calories: 100 kcal",
    "Carbohydrates: 7 g",
    "Protein: 3 g",
    "Fats: 6 g",
    "Fibre: 3 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai-style tofu soup with mushrooms",
    "Calories: 160 kcal",
    "Carbohydrates: 10 g",
    "Protein: 12 g",
    "Fats: 7 g",
    "Fibre: 2 g",
    "1 small side of fermented Thai cabbage (somtam-style but without chili)",
    "Calories: 40 kcal",
    "Carbohydrates: 4 g",
    "Protein: 1 g",
    "Fats: 2 g",
    "Fibre: 2 g",
    "1 cup warm pandan tea (unsweetened)",
    "Calories: 3 kcal",
    "Carbohydrates: 0.5 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tuesday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
              // BREAKFAST
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
              Card(
                elevation: 4,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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

              // LUNCH
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('LUNCH',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
                ),
              ),
              Card(
                elevation: 4,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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

              // DINNER
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('DINNER',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
                ),
              ),
              Card(
                elevation: 4,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
            ])));
  }
}
