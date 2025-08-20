import 'package:flutter/material.dart';

class tuesdayThaiGut extends StatefulWidget {
  const tuesdayThaiGut({super.key});

  @override
  State<tuesdayThaiGut> createState() => _tuesdayThaiGutState();
}

class _tuesdayThaiGutState extends State<tuesdayThaiGut> {

  final List<String> breakfast = [
    "Thai Style Banana Smoothie (No added sugar)"
        "Calories: 250 kcal"
        "Proteins: 5g"
        "Carbohydrates: 45g"
        "Fats: 8g"
        "Fibre: 5g",

    "Warm Ginger Lemon Water"
        "Calories: 5 kcal"
        "Fibre: 1g"
  ];

  final List<String> lunch = [
    "1 Bowl Thai Green Curry with Vegetables (Mild, without coconut milk)"
        "Calories: 220 kcal"
        "Protein: 10g"
        "Carbohydrates: 20g"
        "Fats: 12g"
        "Fibre: 5g",

    "1 cup Brown Rice"
        "Calories: 165 kcal"
        "Protein: 3.5g"
        "Carbohydrates: 34g"
        "Fibre: 1.8g"
        "Fats: 1.3g",

    "Papaya Salad (No chili, mild dressing)"
        "Calories: 100 kcal"
        "Carbohydrates: 25g"
        "Protein: 2g"
        "Fats: 2g"
        "Fibre: 4g"
  ];

  final List<String> dinner = [
    "Steamed Fish with Lemongrass and Basil (No chili)"
        "Calories: 180 kcal"
        "Protein: 22g"
        "Carbohydrates: 5g"
        "Fats: 8g"
        "Fibre: 2g",

    "1 Bowl Stir-fried Vegetables (No oil)"
        "Calories: 100 kcal"
        "Carbohydrates: 15g"
        "Protein: 5g"
        "Fats: 3g"
        "Fibre: 4g",

    "1 small bowl of plain yogurt (Optional)"
        "Calories: 120 kcal"
        "Carbohydrates: 15g"
        "Protein: 6g"
        "Fats: 5g"
        "Fibre: 0g"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'TUESDAY (Thai Gut Diet)',
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
                      child: Text('BREAKFAST (250 kcal)', style: TextStyle(
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
                              'assets2/images2/banana_smoothie.jpg', height: 200,
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
                                    'assets2/images2/green_curry_vegetables.jpg', height: 200,
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
                                    'assets2/images2/steamed_fish_lemongrass.jpg', height: 200,
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
