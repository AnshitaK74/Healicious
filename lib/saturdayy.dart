import 'package:flutter/material.dart';
class wednesday extends StatefulWidget {
  const wednesday({super.key});

  @override
  State<wednesday> createState() => _wednesdayState();
}

class _wednesdayState extends State<wednesday> {

  final List<String> breakfast=[
    "1 Glass carrot-orange juice(no added sugar)"
    "Calories:120kcal"
    "protein:2g"
    "Carbohydrates:25g"
    "Fibre:2g"
    "Fats:0g"

    "2 Boiled eggs"
    "Calories:140kcal"
    "Protein:11g"
    "Carbohydrates:1g"
    "Fibre:0g"
    "Fats:10g"

    "1 slice multigrain toast"
        "Calories:70kcal"
        "Protein:3g"
        "Carbohydrates:12g"
        "Fibre:2g"
        "Fats:1g"
  ];

  final List<String> lunch=[
    "2 multi grain Roti(made with wheat,jowar,bajra)"
        "Calories:180kcal"
        "Protein:6g"
        "Carbohydrates:30g"
        "Fibre:6-7g"
        "Fats:3g"

    "1 bowl Rajma"
        "Calories:220kcal"
        "Protein:15g"
        "Carbohydrates:30g"
        "Fibre:8g"
        "Fats:2g"

    "1 cup brown Rice"
        "Calories:215kcal"
        "Protein:5g"
        "Carbohydrates:45g"
        "Fibre:3.5g"
        "Fats:1.5g"

    "mint-cucumber Raita"
        "Calories:50kcal"
        "Protein:3g"
        "Carbohydrates:4g"
        "Fibre:1g"
        "Fats:2g"


  ];
  final List<String> dinner=[
    "Quinoa vegetable khichdi"
        "Calories:250kcal"
        "Protein:10g"
        "Carbohydrates:35g"
        "Fibre:6g"
        "Fats:6g"

    "1 small bowl stir fried tofu"
        "Calories:120kcal"
        "Protein:10g"
        "Carbohydrates:2g"
        "Fibre:1g"
        "Fats:10g"


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wednesday',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
      ),
        body:SingleChildScrollView(
            child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BREAKFAST (380-200kcal)', style: TextStyle(
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
                              'assets2/images2/eggs.jpeg', height: 200,
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
                                    'assets2/images2/rajma.jpeg', height: 200,
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
                                title: Text(lunch[index]),
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
                                    'assets2/images2/dinner.jpeg', height: 200,
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
