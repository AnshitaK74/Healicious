import 'package:flutter/material.dart';
class mondaydiabetes extends StatefulWidget {
  const mondaydiabetes({super.key});

  @override
  State<mondaydiabetes> createState() => _mondaydiabetesState();
}

class _mondaydiabetesState extends State<mondaydiabetes> {

  final List<String> breakfast = [
    "1 slice of Tamago-yaki"
    "Calories: 140 kcal"
    "Protein: 12 g"
    "Carbs: 1.5 g"
    "Fat: 10 g"
    "Fiber: 0 g"

    "½ bowl of Cucumber Sunomono"
    "Calories: 30 kcal"
    "Protein: 1 g"
    "Carbs: 4 g"
    "Fat: 1.5 g"
    "Fiber: 1 g"

    "1 cup of Matcha Tea"
    "Calories: 5 kcal"
    "Protein: 0.5 g"
    "Carbs: 0.5 g"
    "Fat: 0 g"
    "Fiber: 0 g"




  ];
  final List<String> lunch=[
  "½ plate of Chicken Soboro"
  "Calories: 200 kcal"
  "Protein: 24 g"
  "Carbs: 1 g"
  "Fat: 10 g"
  "Fiber: 0 g"

  "1 bowl of Steamed Okra with Sesame Dressing"
  "Calories: 50 kcal"
  "Protein: 2 g"
  "Carbs: 6 g"
  "Fat: 2.5 g"
  "Fiber: 3 g"

  "½ bowl of  Quinoa"
  "Calories: 110 kcal"
  "Protein: 4 g"
  "Carbs: 20 g"
  "Fat: 2 g"
  "Fiber: 2"



  ];

  final List<String> dinner=[
    "½ plate Stir-Fried Tempeh with Tamari Sauce"


    "Calories: 200 kcal"
    "Protein: 19 g"
    "Carbs: 6 g"
    "Fat: 12 g"
    "Fiber: 3 g"


    "1 bowl of Napa Cabbage, Carrot, & Bell Pepper Stir-Fry"
    "Calories: 50 kcal"
    "Protein: 2 g"
    "Carbs: 8 g"
    "Fat: 1.5 g"
    "Fiber: 3 g"

    "1 bowl of Shirataki Rice"
    "Calories: 10 kcal"
    "Protein: 0.5 g"
    "Carbs: 2 g"
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
                              'assets5/images5/qwe.jpeg', height: 200,
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
                                    'assets5/images5/napa.jpeg', height: 200,
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
                                    'assets5/images5/plm.jpeg', height: 200,
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