import 'package:flutter/material.dart';

class thursdaydora extends StatefulWidget {
  const thursdaydora({super.key});

  @override
  State<thursdaydora> createState() => _thursdaydoraState();
}

class _thursdaydoraState extends State<thursdaydora> {

  final List<String> breakfast = [
    "Thai Fruit Salad (Mango, Papaya, Pineapple, and Coconut)"
        "Calories: 180 kcal"
        "Proteins: 2g"
        "Carbohydrates: 45g"
        "Fats: 4g"
        "Fibre: 6g",

    "Herbal Tea (Ginger Tea)"
        "Calories: 0 kcal"
        "Fibre: 0g"
  ];

  final List<String> lunch = [
    "1 Bowl Green Curry (Chicken or Tofu)"
        "Calories: 250 kcal"
        "Protein: 15g"
        "Carbohydrates: 15g"
        "Fats: 18g"
        "Fibre: 3g",

    "1 Cup Brown Rice"
        "Calories: 165 kcal"
        "Protein: 3.5g"
        "Carbohydrates: 34g"
        "Fibre: 1.8g"
        "Fats: 1.3g",

    "Thai Cucumber Salad (No chili)"
        "Calories: 90 kcal"
        "Carbohydrates: 20g"
        "Protein: 2g"
        "Fats: 2g"
        "Fibre: 4g"
  ];

  final List<String> dinner = [
    "1 Bowl Thai Spiced Grilled Chicken (Mild spice)"
        "Calories: 200 kcal"
        "Protein: 25g"
        "Carbohydrates: 5g"
        "Fats: 9g"
        "Fibre: 1g",

    "1 Bowl Steamed Vegetables (Pumpkin, Carrot, Spinach)"
        "Calories: 100 kcal"
        "Carbohydrates: 20g"
        "Protein: 3g"
        "Fats: 2g"
        "Fibre: 6g",

    "Coconut Water (Optional)"
        "Calories: 45 kcal"
        "Carbohydrates: 9g"
        "Protein: 1g"
        "Fats: 0g"
        "Fibre: 0g"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'THURSDAY (Thai Gut Diet)',
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
                      child: Text('BREAKFAST (180 kcal)', style: TextStyle(
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
                              'assets2/images2/fruit_salad.jpg', height: 200,
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
                                    'assets2/images2/green_curry.jpg', height: 200,
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
                                    'assets2/images2/grilled_chicken.jpg', height: 200,
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
