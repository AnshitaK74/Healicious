import 'package:flutter/material.dart';
class saturday extends StatefulWidget {
  const saturday({super.key});

  @override
  State<saturday> createState() => _saturdayState();
}

class _saturdayState extends State<saturday> {

  final List<String> breakfast = [
    "1 small bowl of Steamed Egg Custard(1 egg, mushroom, spinach, light soy, no sugar)"
    "Calories: 95 kcal"
    "Protein: 8 g"
    "Carbs: 2 g"
    "Fat: 6 g"
    "Fiber: 0.5 g"

    " 1 glass of juice(Kyuri , Tomato,Shiso Leaf,Yuzu,Tomato, Water)"
    "Calories:65–70 kcal"
    "Protein:	1 g"
    "Carbs: 15 g"
    "Fat:	0.2 g"
    "Fiber:	2–2.5 g (if unstrained)"

  ];
  final List<String> lunch=[
    "1 full bowl of  Chicken & Vegetable Clear Soup(clear soy broth with shredded chicken, carrot, spinach, shiitake)"
    "Calories: 110 kcal"
    "Protein: 15 g"
    "Carbs: 4 g"
    "Fat: 4 g"
    "Fiber: 2 g"


    "1  ½ bowl of steamed Edamame & Grated Radish Salad "
        "Calories: 70 kcal"
    "Protein: 7 g"
    "Carbs: 6 g"
    "Fat: 3 g"
    "Fiber: 3 g"

  ];

  final List<String> dinner=[
    "1 ½ bowl of  Tofu Teriyaki"

    "Calories: 160 kcal"
    "Protein: 14 g"
    "Carbs: 6 g"
    "Fat: 10 g"
    "Fiber: 1 g"

    "½ bowl of Stir-Fried Vegetables (Cabbage, Bell Pepper, Zucchini, Garlic)"
    "Calories: 60 kcal"
    "Protein: 2 g"
    "Carbs: 7 g"
    "Fat: 3 g"
    "Fiber: 2.5 g"

    "½ bowl of Boiled Buckwheat Noodles"
    "Calories: 100 kcal"
    "Protein: 4 g"
    "Carbs: 19 g"
    "Fat: 1 g"
    "Fiber: 1.5 g"


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saturday', style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green.shade800),),
        ),
        body:SingleChildScrollView(
            child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BREAKFAST', style: TextStyle(
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
                              'assets5/images5/edamame.jpg', height: 200,
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
                                    'assets5/images5/choy.jpeg', height: 200,
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
                                    'assets5/images5/juice.jpeg', height: 200,
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