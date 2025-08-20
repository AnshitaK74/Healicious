import 'package:flutter/material.dart';
class friday extends StatefulWidget {
  const friday({super.key});

  @override
  State<friday> createState() => _fridayState();
}

class _fridayState extends State<friday> {

  final List<String> breakfast = [
    "1 small rolled omelette ( 2 eggs and 1 tsp soy)"
    "Calories: 140 kcal"
    "Protein: 12 g"
    "Carbs: 1 g"
    "Fat: 10 g"
    "Fiber: 0 g"

    "½ bowl of Steamed Carrots & Beans"

    "Calories: 35 kcal"
    "Protein: 1 g"
    "Carbs: 7 g"
    "Fat: 0 g"
    "Fiber: 2.5 g"

  ];
  final List<String> lunch=[
    " ½ plate of Stir-Fried Chicken with Bok Choy & Soy Sauce"
    "Calories: 180 kcal"
    "Protein: 24 g"
    "Carbs: 2 g"
    "Fat: 9 g"
    "Fiber: 1.5 g"

    "½ bowl of Steamed Brown Rice"

    "Calories: 110 kcal"
    "Protein: 2.5 g"
    "Carbs: 22 g"
    "Fat: 1 g"
    "Fiber: 2 g"


  ];

  final List<String> dinner=[
    "1 large bowl of Japanese Chicken Hot Pot(Chicken, shiitake, cabbage, tofu, clear broth)"
    "Calories: 290 kcal"
    "Protein: 30 g"
    "Carbs: 10 g"
    "Fat: 12 g"
    "Fiber: 3 g"

    "1  ½ bowl of Shirataki Noodles"

    "Calories: 15 kcal"
    "Protein: 0 g"
    "Carbs: 3 g"
    "Fat: 0 g"
    "Fiber: 2 g"

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
                              'assets5/images5/eggroll.jpeg', height: 200,
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
                                    'assets5/images5/zosui.jpeg', height: 200,
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