import 'package:flutter/material.dart';

class tuesdaydiabetes extends StatefulWidget {
  const tuesdaydiabetes({super.key});

  @override
  State<tuesdaydiabetes> createState() => _tuesdaydiabetesState();
}

class _tuesdaydiabetesState extends State<tuesdaydiabetes> {

  final List<String> breakfast = [
    "1 Guava (medium-sized)\n"
        "Calories: 68 kcal\n"
        "Carbohydrates: 14g\n"
        "Protein: 2.6g\n"
        "Fats: 1g\n"
        "Fibre: 5g\n",

    "Thai-style Steamed Egg (Kai Toon)\n"
        "Calories: 120 kcal\n"
        "Carbohydrates: 2g\n"
        "Protein: 8g\n"
        "Fats: 9g\n"
        "Fibre: 0g\n",

    "Pandan Leaf Herbal Tea\n"
        "Calories: 2 kcal\n"
  ];

  final List<String> lunch = [
    "Thai Chicken Larb (minced chicken salad)\n"
        "Calories: 180 kcal\n"
        "Protein: 18g\n"
        "Carbohydrates: 5g\n"
        "Fibre: 1g\n"
        "Fats: 10g\n",

    "Steamed Jasmine Brown Rice (1 cup)\n"
        "Calories: 160 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 34g\n"
        "Fibre: 2g\n"
        "Fats: 1g\n",

    "Boiled Mixed Vegetables with Thai Dipping Sauce\n"
        "Calories: 80 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 10g\n"
        "Fibre: 3g\n"
        "Fats: 3g\n"
  ];

  final List<String> dinner = [
    "Tofu and Broccoli Stir Fry with Garlic\n"
        "Calories: 170 kcal\n"
        "Carbohydrates: 10g\n"
        "Protein: 12g\n"
        "Fats: 10g\n"
        "Fibre: 3g\n",

    "Tom Kha Soup (light coconut veg version)\n"
        "Calories: 90 kcal\n"
        "Carbohydrates: 6g\n"
        "Protein: 2g\n"
        "Fats: 6g\n"
        "Fibre: 1g\n",

    "Cucumber Salad with Lime Dressing\n"
        "Calories: 40 kcal\n"
        "Carbohydrates: 4g\n"
        "Protein: 1g\n"
        "Fats: 2g\n"
        "Fibre: 1g\n"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TUESDAY', style: TextStyle(fontWeight: FontWeight.bold,
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
                      child: Text('BREAKFAST (200-190 kcal)', style: TextStyle(
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
