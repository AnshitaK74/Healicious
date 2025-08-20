import 'package:flutter/material.dart';
class thursdayk extends StatefulWidget {
  const thursdayk({super.key});

  @override
  State<thursdayk> createState() => _thursdaykState();
}

class _thursdaykState extends State<thursdayk> {

  final List<String> breakfast = [
    "1 small of Savory Tofu Pancake"

    "Calories: 130 kcal"
    "Protein: 8 g"
    "Carbs: 9 g"
    "Fat: 6 g"
    "Fiber: 2 g"

    "2 tbsp of Natto with chopped onion & mustard"
    "Calories: 90 kcal"
    "Protein: 8 g"
    "Carbs: 6 g"
    "Fat: 4 g"
    "Fiber: 3 g"

    "1 bowl berries"

    "Calories: 85 kcal"
        "Protein:1.1 g"

        "Carbs: 21 g"
        "Fat: 0.5 g"
        "Fiber: 3.6 g"


  ];
  final List<String> lunch=[
    "½ plate of Grilled Fish "

    "Calories: 180 kcal"
    "Protein: 20 g"
    "Carbs: 0 g"
    "Fat: 10 g"
    "Fiber: 0 g"

    "1 bowl of Kinpira Gobo"
    "Calories: 60 kcal"
    "Protein: 2 g"
    "Carbs: 9 g"
    "Fat: 3 g"
    "Fiber: 3 g"

        "½ bowl of Brown Rice"

        "Calories: 110 kcal"
        "Protein: 2.5 g"
        "Carbs: 23 g"
        "Fat: 1 g"
        "Fiber: 1.8 g"


  ];

  final List<String> dinner=[
    "1 bowl of Tofu-Hijiki Stir Fry"
    "Calories: 180 kcal"
    "Protein: 14 g"
    "Carbs: 8 g"
    "Fat: 10 g"
    "Fiber: 4 g"

    "1½ bowl of Sautéed Mushrooms with Ginger & Garlic"
    "Calories: 50 kcal"
    "Protein: 4 g"
    "Carbs: 3 g"
    "Fat: 2 g"
    "Fiber: 1 g"


    " ½ bowl of Barley Rice"

    "Calories: 100 kcal"
    "Protein: 2.5 g"
    "Carbs: 22 g"
    "Fat: 0.5 g"
    "Fiber: 3.5 g"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MONDAY', style: TextStyle(fontWeight: FontWeight.bold,
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
                              'assets5/images5/goba.jpeg', height: 200,
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
                                    'assets5/images5/nora.jpeg', height: 200,
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
                                    'assets5/images5/mush.jpeg', height: 200,
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