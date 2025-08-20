import 'package:flutter/material.dart';

class mondayThaiGut extends StatefulWidget {
  const mondayThaiGut({super.key});

  @override
  State<mondayThaiGut> createState() => _mondayThaiGutState();
}

class _mondayThaiGutState extends State<mondayThaiGut> {

  final List<String> breakfast = [
    "Thai Style Steamed Rice with Vegetables and Tofu"
        "Calories: 280 kcal"
        "Proteins: 12g"
        "Carbohydrates: 40g"
        "Fats: 6g"
        "Fibre: 4g",

    "Ginger Herbal Tea"
        "Calories: 5 kcal"
        "Fibre: 1g"
  ];

  final List<String> lunch = [
    "1 Bowl Tom Yum Soup with Tofu (Mild, no chili)"
        "Calories: 180 kcal"
        "Protein: 15g"
        "Carbohydrates: 10g"
        "Fats: 7g"
        "Fibre: 2g",

    "1 cup Brown Rice"
        "Calories: 165 kcal"
        "Protein: 3.5g"
        "Carbohydrates: 34g"
        "Fibre: 1.8g"
        "Fats: 1.3g",

    "Steamed Vegetables with a Light Soy Sauce"
        "Calories: 50 kcal"
        "Carbohydrates: 10g"
        "Protein: 3g"
        "Fats: 0.5g"
        "Fibre: 4g"
  ];

  final List<String> dinner = [
    "Grilled Fish with Fresh Herbs (No heavy spices)"
        "Calories: 200 kcal"
        "Protein: 25g"
        "Carbohydrates: 5g"
        "Fats: 10g"
        "Fibre: 2g",

    "1 Bowl Steamed Pumpkin"
        "Calories: 50 kcal"
        "Carbohydrates: 12g"
        "Protein: 2g"
        "Fats: 0.5g"
        "Fibre: 3g",

    "1 small Cucumber Salad (No spicy dressing)"
        "Calories: 20 kcal"
        "Carbohydrates: 4g"
        "Fats: 0.2g"
        "Fibre: 1g"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'MONDAY (Thai Gut Diet)',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BREAKFAST (280 kcal)', style: TextStyle(
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
                              'assets2/images2/vegetable_tofu.jpg', height: 200,
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
                          child: Text('LUNCH',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
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
                                    'assets2/images2/tom_yum_soup.jpg', height: 200,
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
                                title: Text(lunch[index]+"\n"),
                              );
                            }
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('DINNER',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.normal,fontSize: 20),),
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
                                    'assets2/images2/grilled_fish.jpg', height: 200,
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
