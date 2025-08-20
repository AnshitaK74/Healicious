import 'package:flutter/material.dart';

class saturdayThaiGut extends StatefulWidget {
  const saturdayThaiGut({super.key});

  @override
  State<saturdayThaiGut> createState() => _saturdayThaiGutState();
}

class _saturdayThaiGutState extends State<saturdayThaiGut> {

  final List<String> breakfast = [
    "Thai Mango Salad (with a small portion of cabbage and herbs)"
        "Calories: 220 kcal"
        "Proteins: 5g"
        "Carbohydrates: 25g"
        "Fats: 10g"
        "Fibre: 5g",

    "Chamomile Tea"
        "Calories: 0 kcal"
        "Fibre: 0g"
  ];

  final List<String> lunch = [
    "1 Bowl Thai Basil Chicken (using lean chicken breast)"
        "Calories: 350 kcal"
        "Protein: 30g"
        "Carbohydrates: 10g"
        "Fats: 20g"
        "Fibre: 3g",

    "1 Cup Brown Rice"
        "Calories: 165 kcal"
        "Protein: 3.5g"
        "Carbohydrates: 34g"
        "Fibre: 1.8g"
        "Fats: 1.3g",

    "1 Bowl Thai Green Papaya Salad (Som Tum)"
        "Calories: 180 kcal"
        "Carbohydrates: 20g"
        "Protein: 4g"
        "Fats: 8g"
        "Fibre: 6g"
  ];

  final List<String> dinner = [
    "1 Bowl Thai Coconut Soup (with tofu or chicken)"
        "Calories: 300 kcal"
        "Protein: 15g"
        "Carbohydrates: 20g"
        "Fats: 20g"
        "Fibre: 4g",

    "1 Bowl Stir-fried Thai Vegetables (carrots, zucchini, mushrooms, bell peppers)"
        "Calories: 150 kcal"
        "Carbohydrates: 20g"
        "Protein: 5g"
        "Fats: 8g"
        "Fibre: 6g",

    "1 Cup Coconut Water (Optional)"
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
            'SATURDAY (Thai Gut Diet)',
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
                      child: Text('BREAKFAST (220 kcal)', style: TextStyle(
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
                              'assets2/images2/mango_salad.jpg', height: 200,
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
                                    'assets2/images2/basil_chicken.jpg', height: 200,
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
                                    'assets2/images2/coconut_soup.jpg', height: 200,
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
