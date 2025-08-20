import 'package:flutter/material.dart';

class MondayDiabetesIndianDishes extends StatefulWidget {
  const MondayDiabetesIndianDishes({super.key});

  @override
  State<MondayDiabetesIndianDishes> createState() => _MondayDiabetesIndianDishesState();
}

class _MondayDiabetesIndianDishesState extends State<MondayDiabetesIndianDishes> {
  final List<String> breakfast = [
    "Moong Dal Chilla with Mint Chutney",
    "Calories: 180 kcal",
    "Protein: 12g",
    "Carbohydrates: 20g",
    "Fats: 6g",
    "Fibre: 4g",

    "Unsweetened Herbal Tea",
    "Calories: 2 kcal"
  ];

  final List<String> lunch = [
    "Brown Rice with Mixed Vegetable Curry (no potatoes)",
    "Calories: 320 kcal",
    "Protein: 10g",
    "Carbohydrates: 40g",
    "Fats: 12g",
    "Fibre: 6g",

    "Cucumber Raita (Low-fat Yogurt)",
    "Calories: 60 kcal",
    "Protein: 4g",
    "Carbohydrates: 4g",
    "Fats: 3g",
    "Fibre: 1g"
  ];

  final List<String> dinner = [
    "Palak Tofu Curry with 1 Multigrain Roti",
    "Calories: 300 kcal",
    "Protein: 18g",
    "Carbohydrates: 20g",
    "Fats: 15g",
    "Fibre: 5g",

    "Warm Jeera Water",
    "Calories: 2 kcal"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Monday', style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green.shade800)),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BREAKFAST', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets16/images16/puri.jpeg', height: 200,
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
                                    color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                                    fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,
                                  )),
                            );
                          }
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Transform.translate(offset: Offset(16, 0),
                          child: Text('LUNCH', style: TextStyle(color: Colors.green.shade800, fontWeight: FontWeight.normal, fontSize: 20)),
                        ),
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'aassets5/images5/regular.jpeg', height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: lunch.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                                title: Text(lunch[index],
                                  style: TextStyle(
                                    color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                                    fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                                  ),
                                )
                            );
                          }
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Transform.translate(offset: Offset(16, 0),
                          child: Text('DINNER', style: TextStyle(color: Colors.green.shade800, fontWeight: FontWeight.normal, fontSize: 20)),
                        ),
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets7/images7/e.jpeg', height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
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
                                          color: isFoodItem(dinner[index]) ? Colors.green.shade600 : Colors.black,
                                          fontWeight: isFoodItem(dinner[index]) ? FontWeight.bold : FontWeight.normal,
                                        ))));
                          }
                      )
                    ],
                  )
                ]
            )
        )
    );
  }
}
