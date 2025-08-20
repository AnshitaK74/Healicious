import 'package:flutter/material.dart';

class thursdaydiabetes extends StatefulWidget {
  const thursdaydiabetes({super.key});

  @override
  State<thursdaydiabetes> createState() => _thursdaydiabetesState();
}

class _thursdaydiabetesState extends State<thursdaydiabetes> {

  final List<String> breakfast = [
    "1 Pear (medium-sized)\n"
        "Calories: 100 kcal\n"
        "Carbohydrates: 27g\n"
        "Protein: 0.5g\n"
        "Fats: 0.2g\n"
        "Fibre: 5g\n",

    "Thai Veg Omelet (Kai Jeow) with Onion & Herbs\n"
        "Calories: 140 kcal\n"
        "Carbohydrates: 3g\n"
        "Protein: 8g\n"
        "Fats: 10g\n"
        "Fibre: 1g\n",

    "Lemongrass Herbal Tea\n"
        "Calories: 2 kcal\n"
  ];

  final List<String> lunch = [
    "Thai Basil Stir-Fry with Minced Tofu (Pad Kra Pao)\n"
        "Calories: 160 kcal\n"
        "Protein: 12g\n"
        "Carbohydrates: 6g\n"
        "Fibre: 2g\n"
        "Fats: 10g\n",

    "Steamed Brown Rice (3/4 cup)\n"
        "Calories: 130 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 28g\n"
        "Fibre: 2g\n"
        "Fats: 1g\n",

    "Stir-Fried Green Beans with Garlic\n"
        "Calories: 90 kcal\n"
        "Protein: 2g\n"
        "Carbohydrates: 8g\n"
        "Fibre: 3g\n"
        "Fats: 5g\n"
  ];

  final List<String> dinner = [
    "Thai Cabbage Soup with Mushrooms\n"
        "Calories: 70 kcal\n"
        "Carbohydrates: 6g\n"
        "Protein: 3g\n"
        "Fats: 3g\n"
        "Fibre: 2g\n",

    "Steamed Fish with Lime & Garlic (Pla Neung)\n"
        "Calories: 140 kcal\n"
        "Carbohydrates: 2g\n"
        "Protein: 20g\n"
        "Fats: 6g\n"
        "Fibre: 0g\n",

    "Thai Papaya Salad (Som Tam - no sugar)\n"
        "Calories: 60 kcal\n"
        "Carbohydrates: 7g\n"
        "Protein: 1g\n"
        "Fats: 3g\n"
        "Fibre: 2g\n"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('THURSDAY', style: TextStyle(fontWeight: FontWeight.bold,
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
                      child: Text('BREAKFAST (approx. 240 kcal)', style: TextStyle(
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
