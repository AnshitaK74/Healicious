import 'package:flutter/material.dart';

class TuesdayDiabetesIndianDishes extends StatefulWidget {
  const TuesdayDiabetesIndianDishes({super.key});

  @override
  State<TuesdayDiabetesIndianDishes> createState() => _TuesdayDiabetesIndianDishesState();
}

class _TuesdayDiabetesIndianDishesState extends State<TuesdayDiabetesIndianDishes> {

  final List<String> breakfast = [
    "Vegetable Upma with Flaxseeds",
    "Calories: 230 kcal",
    "Protein: 8g",
    "Carbohydrates: 30g",
    "Fats: 9g",
    "Fibre: 5g",

    "Unsweetened Green Tea",
    "Calories: 2 kcal"
  ];

  final List<String> lunch = [
    "2 Bajra Roti + Baingan Bharta + Plain Curd",
    "Calories: 310 kcal",
    "Protein: 16g",
    "Carbohydrates: 28g",
    "Fats: 12g",
    "Fibre: 6g",

    "Beetroot-Cabbage Salad with Lemon",
    "Calories: 35 kcal",
    "Protein: 1g",
    "Carbohydrates: 5g",
    "Fats: 1g",
    "Fibre: 2g"
  ];

  final List<String> dinner = [
    "Tofu Palak Curry + Cauliflower Rice",
    "Calories: 340 kcal",
    "Protein: 18g",
    "Carbohydrates: 20g",
    "Fats: 20g",
    "Fibre: 6g",

    "Warm Ginger Water",
    "Calories: 2 kcal"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tuesday', style: TextStyle(fontWeight: FontWeight.bold,
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
                              'assets4/img4/anda.jpg', height: 200,
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
                                    'assets4/img4/11.jpeg', height: 200,
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
                                    'assets4/img4/namkeen.webp', height: 200,
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
