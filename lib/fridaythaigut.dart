import 'package:flutter/material.dart';

class fridayThaiGut extends StatefulWidget {
  const fridayThaiGut({super.key});

  @override
  State<fridayThaiGut> createState() => _fridayThaiGutState();
}

class _fridayThaiGutState extends State<fridayThaiGut> {

  final List<String> breakfast = [
    "Thai Mango Sticky Rice (with a smaller portion of sticky rice)"
        "Calories: 300 kcal"
        "Proteins: 4g"
        "Carbohydrates: 65g"
        "Fats: 7g"
        "Fibre: 3g",

    "Green Tea"
        "Calories: 0 kcal"
        "Fibre: 0g"
  ];

  final List<String> lunch = [
    "1 Bowl Tom Yum Soup (with tofu or chicken)"
        "Calories: 220 kcal"
        "Protein: 15g"
        "Carbohydrates: 18g"
        "Fats: 12g"
        "Fibre: 3g",

    "1 Cup Jasmine Rice"
        "Calories: 180 kcal"
        "Protein: 4g"
        "Carbohydrates: 40g"
        "Fibre: 1g"
        "Fats: 0g",

    "Thai Papaya Salad (Som Tum)"
        "Calories: 150 kcal"
        "Carbohydrates: 22g"
        "Protein: 5g"
        "Fats: 5g"
        "Fibre: 6g"
  ];

  final List<String> dinner = [
    "1 Bowl Thai Red Curry (chicken or tofu)"
        "Calories: 350 kcal"
        "Protein: 20g"
        "Carbohydrates: 25g"
        "Fats: 20g"
        "Fibre: 5g",

    "1 Bowl Stir-Fried Thai Vegetables (carrots, bell peppers, mushrooms)"
        "Calories: 120 kcal"
        "Carbohydrates: 20g"
        "Protein: 3g"
        "Fats: 5g"
        "Fibre: 4g",

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
            'FRIDAY (Thai Gut Diet)',
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
                      child: Text('BREAKFAST (300 kcal)', style: TextStyle(
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
                              'assets2/images2/mango_sticky_rice.jpg', height: 200,
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
                                    'assets2/images2/red_curry.jpg', height: 200,
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
