import 'package:flutter/material.dart';
class thursday extends StatefulWidget {
  const thursday({super.key});

  @override
  State<thursday> createState() => _thursdayState();
}

class _thursdayState extends State<thursday> {

  final List<String> breakfast=[
    " 2 Moong Dal chilla:"

    "Calories:200 kcal"
    "Protein:18g"
    "Carbohydrates:14g"
    "Fta:8g"
    "Fibre:4g"

    "1 glass Mint-cucumber Juice:"

        "Calories:30 kcal"
        "Protein:1g"
        "Carbohydrates:6g"
        "Fta:0g"
        "Fibre:41"

  ];

  final List<String> lunch=[

    "1 Bowl Rajma:"
    "Calories:210 kcal"
    "Protein:13g"
    "Carbohydrates:35g"
    "Fats:4g"
    "Fibre:9g"

    "1 Brown Rice:"
        "Calories:215 kcal"
        "Protein:5g"
        "Carbohydrates:45g"
        "Fats:1.5g"
        "Fibre:3.5g"

  ];

  final List<String> dinner=[

    "2 paneer stuffed paratha:"

    "Calories:450–500 kcal"
    "Protein:18–20g"
    "Carbohydrates:55–60g"
    "Fiber:7–8g"
    "Fats:18–20g"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Tuesday',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green.shade800),),
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
                              'assets2/images2/juice.jpeg', height: 200,
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
                                    'assets2/images2/rice.jpeg', height: 200,
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
                                    'assets2/images2/paratha.jpeg', height: 200,
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
