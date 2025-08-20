import 'package:flutter/material.dart';

class ThursdayDiabetesIndianDishes extends StatefulWidget {
  const ThursdayDiabetesIndianDishes({super.key});

  @override
  State<ThursdayDiabetesIndianDishes> createState() => _ThursdayDiabetesIndianDishesState();
}

class _ThursdayDiabetesIndianDishesState extends State<ThursdayDiabetesIndianDishes> {

  final List<String> breakfast = [
    "Moong Dal Chilla with Mint Chutney",
    "Calories: 240 kcal",
    "Protein: 12g",
    "Carbohydrates: 18g",
    "Fats: 10g",
    "Fibre: 4g",

    "Black Tea (No Sugar)",
    "Calories: 2 kcal"
  ];

  final List<String> lunch = [
    "Quinoa Khichdi with Mixed Veggies",
    "Calories: 320 kcal",
    "Protein: 14g",
    "Carbohydrates: 30g",
    "Fats: 12g",
    "Fibre: 6g",

    "Cucumber-Onion Raita",
    "Calories: 60 kcal",
    "Protein: 3g",
    "Carbohydrates: 5g",
    "Fats: 2g",
    "Fibre: 1g"
  ];

  final List<String> dinner = [
    "Grilled Paneer Tikka with Sauteed Greens",
    "Calories: 330 kcal",
    "Protein: 20g",
    "Carbohydrates: 10g",
    "Fats: 22g",
    "Fibre: 4g",

    "Herbal Tulsi Tea",
    "Calories: 2 kcal"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thursday', style: TextStyle(fontWeight: FontWeight.bold,
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
                              'assets17/images17/a.jpeg', height: 200,
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
                                    'assets17/images17/b.jpeg', height: 200,
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
                                    'assets17/images17/a.jpeg', height: 200,
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
