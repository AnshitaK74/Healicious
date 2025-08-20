import 'package:flutter/material.dart';

class wednesdaydiabetes extends StatefulWidget {
  const wednesdaydiabetes({super.key});

  @override
  State<wednesdaydiabetes> createState() => _wednesdaydiabetesState();
}

class _wednesdaydiabetesState extends State<wednesdaydiabetes> {

  final List<String> breakfast = [
    "1 Apple (medium-sized)\n"
        "Calories: 95 kcal\n"
        "Carbohydrates: 25g\n"
        "Protein: 0.5g\n"
        "Fats: 0.3g\n"
        "Fibre: 4g\n",

    "Thai Rice Soup with Vegetables (Khao Tom)\n"
        "Calories: 110 kcal\n"
        "Carbohydrates: 18g\n"
        "Protein: 3g\n"
        "Fats: 2g\n"
        "Fibre: 1g\n",

    "Thai Ginger Tea\n"
        "Calories: 2 kcal\n"
  ];

  final List<String> lunch = [
    "Thai Veg Curry with Coconut Milk (light)\n"
        "Calories: 150 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 12g\n"
        "Fibre: 2g\n"
        "Fats: 10g\n",

    "Steamed Red Rice (1 cup)\n"
        "Calories: 170 kcal\n"
        "Protein: 4g\n"
        "Carbohydrates: 35g\n"
        "Fibre: 2.5g\n"
        "Fats: 1.5g\n",

    "Steamed Zucchini & Carrot Slices with Lime\n"
        "Calories: 60 kcal\n"
        "Protein: 2g\n"
        "Carbohydrates: 9g\n"
        "Fibre: 2g\n"
        "Fats: 2g\n"
  ];

  final List<String> dinner = [
    "Thai Mushroom Soup (Nam Hed)\n"
        "Calories: 85 kcal\n"
        "Carbohydrates: 7g\n"
        "Protein: 3g\n"
        "Fats: 3g\n"
        "Fibre: 1.5g\n",

    "Tofu Lettuce Wraps with Garlic Sauce\n"
        "Calories: 130 kcal\n"
        "Carbohydrates: 8g\n"
        "Protein: 9g\n"
        "Fats: 7g\n"
        "Fibre: 2g\n",

    "Boiled Pumpkin Chunks with Thai Herbs\n"
        "Calories: 50 kcal\n"
        "Carbohydrates: 12g\n"
        "Protein: 1g\n"
        "Fats: 0g\n"
        "Fibre: 1g\n"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WEDNESDAY', style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green.shade800),),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BREAKFAST (approx. 200 kcal)', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800),),
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
                              'assets2/images2/images-18.jpeg', height: 200,
                              width: 150,
                              fit: BoxFit.cover,),
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: breakfast.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(breakfast[index]),
                              );
                            }
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('LUNCH', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),),
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
                                    'assets2/images2/tofu.jpg', height: 200,
                                    width: 150,
                                    fit: BoxFit.cover,),
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
                                title: Text(lunch[index] + "\n"),
                              );
                            }
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('DINNER', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),),
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
                                    'assets2/images2/curd.jpeg', height: 200,
                                    width: 150,
                                    fit: BoxFit.cover,),
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
                              return ListTile(
                                title: Text(dinner[index]),
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
