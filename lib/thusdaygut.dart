import 'package:flutter/material.dart';

class thursdayItalianGutHighProtein extends StatefulWidget {
  const thursdayItalianGutHighProtein({super.key});

  @override
  State<thursdayItalianGutHighProtein> createState() => _thursdayItalianGutHighProteinState();
}

class _thursdayItalianGutHighProteinState extends State<thursdayItalianGutHighProtein> {
  final List<String> breakfast = [
    "Scrambled Eggs with Spinach (cooked in Olive Oil)",
        "Calories: 230 kcal",
        "Proteins: 14g",
        "Carbohydrates: 3g",
        "Fats: 18g",
        "Fibre: 2g",

    "Black Coffee (unsweetened)",
        "Calories: 2 kcal",
        "Fibre: 0g",
  ];

  final List<String> lunch = [
    "Turkey and Chickpea Salad with Olive Oil Dressing",
        "Calories: 310 kcal",
        "Protein: 32g",
        "Carbohydrates: 14g",
        "Fats: 14g",
        "Fibre: 6g",

    "Grilled Bell Peppers with Garlic",
        "Calories: 50 kcal",
        "Protein: 1g",
        "Carbohydrates: 6g",
        "Fibre: 2g",
        "Fats: 2g",
  ];

  final List<String> dinner = [
    "Baked Cod with Herbs and Lemon",
        "Calories: 190 kcal",
        "Protein: 28g",
        "Carbohydrates: 0g",
        "Fats: 8g",
        "Fibre: 0g",

    "Lentil & Kale Stew",
        "Calories: 160 kcal,"
        "Carbohydrates: 18g",
        "Protein: 10g",
        "Fats: 3g",
        "Fibre: 7g",

    "Roasted Brussels Sprouts",
        "Calories: 60 kcal",
        "Carbohydrates: 8g",
        "Fibre: 3g",
        "Protein: 2g",
        "Fats: 3g",
  ];
  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Thursday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.green.shade800),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BREAKFAST ', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets7/images7/chorizo.jpeg',
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
                                    color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                                    fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,

                                  ),


                                ),
                              );
                            }),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Transform.translate(offset:Offset(16,0),
                          child: Text('LUNCH', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                          ),
                        ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets11/images11/v.jpg',
                                    height: 200,
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
                                title: Text(lunch[index] ,
                                  style: TextStyle(
                                    color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                                    fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                                  ),

                                ),
                              );
                            }),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Transform.translate(offset:Offset(16,0),
                          child: Text('DINNER', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                          ),
                        ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets12/images12/z.jpeg',
                                    height: 200,
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
                                child: ListTile(
                                title: Text(dinner[index],
                                  style: TextStyle(
                                    color: isFoodItem(dinner[index]) ? Colors.green.shade600 : Colors.black,
                                    fontWeight: isFoodItem(dinner[index]) ? FontWeight.bold : FontWeight.normal,
                                  ),

                                ),
                                )
                              );
                            }),
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}
