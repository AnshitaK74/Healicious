import 'package:flutter/material.dart';

class mondaydiabetes extends StatefulWidget {
  const mondaydiabetes({super.key});

  @override
  State<mondaydiabetes> createState() => _mondaydiabetesState();
}

class _mondaydiabetesState extends State<mondaydiabetes> {

  final List<String> breakfast = [
    "Thai Vegetable Omelette with Herbs\n"
        "Calories: 220 kcal\n"
        "Protein: 14g\n"
        "Carbohydrates: 5g\n"
        "Fats: 16g\n"
        "Fibre: 2g\n",

    "Lemongrass Tea (no sugar)\n"
        "Calories: 2 kcal\n"
  ];

  final List<String> lunch = [
    "Som Tam (Green Papaya Salad)\n"
        "Calories: 120 kcal\n"
        "Protein: 2g\n"
        "Carbohydrates: 14g\n"
        "Fibre: 3g\n"
        "Fats: 5g\n",

    "Steamed Jasmine Brown Rice (1 cup)\n"
        "Calories: 160 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 34g\n"
        "Fibre: 2g\n"
        "Fats: 1g\n",

    "Grilled Tofu with Thai Basil\n"
        "Calories: 180 kcal\n"
        "Protein: 14g\n"
        "Carbohydrates: 6g\n"
        "Fats: 12g\n"
        "Fibre: 2g\n"
  ];

  final List<String> dinner = [
    "Clear Tom Yum Soup with Veggies\n"
        "Calories: 90 kcal\n"
        "Carbohydrates: 8g\n"
        "Protein: 3g\n"
        "Fats: 4g\n"
        "Fibre: 2g\n",

    "Thai Stir-Fried Bitter Gourd and Egg\n"
        "Calories: 110 kcal\n"
        "Carbohydrates: 6g\n"
        "Protein: 8g\n"
        "Fats: 6g\n"
        "Fibre: 2.5g\n",

    "Steamed Pumpkin (1 small bowl)\n"
        "Calories: 60 kcal\n"
        "Carbohydrates: 13g\n"
        "Protein: 1g\n"
        "Fats: 0.5g\n"
        "Fibre: 1.5g\n"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MONDAY', style: TextStyle(fontWeight: FontWeight.bold,
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
                      child: Text('BREAKFAST (220-2 kcal)', style: TextStyle(
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
