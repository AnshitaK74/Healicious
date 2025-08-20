import 'package:flutter/material.dart';

class fridaydiabetes extends StatefulWidget {
  const fridaydiabetes({super.key});

  @override
  State<fridaydiabetes> createState() => _fridaydiabetesState();
}

class _fridaydiabetesState extends State<fridaydiabetes> {

  final List<String> breakfast = [
    "Fresh Amla-Cucumber Juice (no sugar, 1 glass)\n"
        "Calories: 35 kcal\n"
        "Carbohydrates: 8g\n"
        "Protein: 1g\n"
        "Fats: 0g\n"
        "Fibre: 1g\n",

    "Boiled Egg with Thai Herbs (1 pc)\n"
        "Calories: 68 kcal\n"
        "Carbohydrates: 1g\n"
        "Protein: 6g\n"
        "Fats: 5g\n"
        "Fibre: 0g\n",

    "Steamed Veg Dumplings (2 pcs)\n"
        "Calories: 80 kcal\n"
        "Carbohydrates: 10g\n"
        "Protein: 2g\n"
        "Fats: 3g\n"
        "Fibre: 1g\n"
  ];

  final List<String> lunch = [
    "Thai Green Veg Curry (light coconut milk)\n"
        "Calories: 140 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 10g\n"
        "Fibre: 2g\n"
        "Fats: 9g\n",

    "Steamed Brown Rice (1 cup)\n"
        "Calories: 150 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 30g\n"
        "Fibre: 2g\n"
        "Fats: 1g\n",

    "Raw Papaya Salad (Som Tam)\n"
        "Calories: 60 kcal\n"
        "Protein: 1g\n"
        "Carbohydrates: 7g\n"
        "Fibre: 2g\n"
        "Fats: 2g\n"
  ];

  final List<String> dinner = [
    "Tom Yum Veg Soup\n"
        "Calories: 85 kcal\n"
        "Carbohydrates: 6g\n"
        "Protein: 2g\n"
        "Fats: 4g\n"
        "Fibre: 1g\n",

    "Steamed Mixed Vegetables with Tofu\n"
        "Calories: 130 kcal\n"
        "Carbohydrates: 8g\n"
        "Protein: 10g\n"
        "Fats: 6g\n"
        "Fibre: 3g\n",

    "Cabbage Rolls (2 pcs)\n"
        "Calories: 75 kcal\n"
        "Carbohydrates: 6g\n"
        "Protein: 3g\n"
        "Fats: 3g\n"
        "Fibre: 1.5g\n"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FRIDAY', style: TextStyle(fontWeight: FontWeight.bold,
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
                      child: Text('BREAKFAST (approx. 180 kcal)', style: TextStyle(
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
