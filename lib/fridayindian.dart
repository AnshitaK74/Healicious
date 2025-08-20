import 'package:flutter/material.dart';

class FridayDiabetesIndianDishes extends StatefulWidget {
  const FridayDiabetesIndianDishes({super.key});

  @override
  State<FridayDiabetesIndianDishes> createState() => _FridayDiabetesIndianDishesState();
}

class _FridayDiabetesIndianDishesState extends State<FridayDiabetesIndianDishes> {

  final List<String> breakfast = [
    "Moong Dal Chilla with Mint Chutney",
    "Calories: 240 kcal",
    "Protein: 14g",
    "Carbohydrates: 18g",
    "Fats: 10g",
    "Fibre: 4g",

    "Lemon Water (no sugar)",
    "Calories: 2 kcal"
  ];

  final List<String> lunch = [
    "2 Multigrain Rotis + Mixed Vegetable Sabzi + Buttermilk",
    "Calories: 320 kcal",
    "Protein: 16g",
    "Carbohydrates: 28g",
    "Fats: 12g",
    "Fibre: 7g",

    "Cucumber-Tomato Salad",
    "Calories: 30 kcal",
    "Protein: 1g",
    "Carbohydrates: 4g",
    "Fats: 1g",
    "Fibre: 2g"
  ];

  final List<String> dinner = [
    "Stuffed Lauki (Bottle Gourd) with Paneer + 1 Jowar Roti",
    "Calories: 330 kcal",
    "Protein: 18g",
    "Carbohydrates: 20g",
    "Fats: 18g",
    "Fibre: 5g",

    "Ajwain Water",
    "Calories: 2 kcal"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Friday', style: TextStyle(fontWeight: FontWeight.bold,
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
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets17/images17/g.jpeg', height: 200,
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
                          child:Transform.translate(offset:Offset(16,0),
                            child: Text('LUNCH', style: TextStyle(color: Colors.green.shade800, fontWeight: FontWeight.normal, fontSize: 20)),
                          ),
                        ),

                        Container(
                          child: Column(
                            children: [
                              Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets17/images17/e.jpeg', height: 200,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
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
                                      color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                                      fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                                    ),
                                  )
                              );
                            }
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Transform.translate(offset: Offset(16,0),
                            child: Text('DINNER', style: TextStyle(color: Colors.green.shade800, fontWeight: FontWeight.normal, fontSize: 20)),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets17/images17/d.jpeg', height: 200,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: dinner.length,
                            itemBuilder: (context, index) {
                              return Padding(padding:EdgeInsets.all(2),
                                  child:  ListTile(
                                      title: Text(dinner[index],
                                          style: TextStyle(
                                            color: isFoodItem(dinner[index])
                                                ? Colors.green.shade600
                                                : Colors.black,
                                            fontWeight: isFoodItem(dinner[index])
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                          )
                                      )
                                  )
                              );
                            }
                        )
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}
