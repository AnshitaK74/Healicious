import 'package:flutter/material.dart';

class tuesdayItalianDiabetes extends StatefulWidget {
  const tuesdayItalianDiabetes({super.key});

  @override
  State<tuesdayItalianDiabetes> createState() => _tuesdayItalianDiabetesState();
}

class _tuesdayItalianDiabetesState extends State<tuesdayItalianDiabetes> {
  final List<String> breakfast = [
    "1 slice Whole Grain Toast with Ricotta and Sliced Strawberries\n"
        "Calories: 200 kcal\n"
        "Proteins: 8g\n"
        "Carbohydrates: 20g\n"
        "Fats: 9g\n"
        "Fibre: 3g",

    "1 cup Herbal Tea (no sugar)\n"
        "Calories: 2 kcal\n"
        "Fibre: 0g"
  ];

  final List<String> lunch = [
    "Grilled Zucchini & Chickpea Salad with Olive Oil\n"
        "Calories: 250 kcal\n"
        "Protein: 10g\n"
        "Carbohydrates: 18g\n"
        "Fats: 12g\n"
        "Fibre: 6g",

    "1 slice Whole Wheat Focaccia\n"
        "Calories: 140 kcal\n"
        "Protein: 3g\n"
        "Carbohydrates: 22g\n"
        "Fibre: 2g\n"
        "Fats: 4g"
  ];

  final List<String> dinner = [
    "Baked Eggplant Parmesan (light cheese)\n"
        "Calories: 230 kcal\n"
        "Protein: 12g\n"
        "Carbohydrates: 16g\n"
        "Fats: 13g\n"
        "Fibre: 5g",

    "Steamed Asparagus with Lemon\n"
        "Calories: 35 kcal\n"
        "Carbohydrates: 4g\n"
        "Fibre: 2g\n"
        "Protein: 2g\n"
        "Fats: 0.5g"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'TUESDAY (Italian Diabetes Diet)',
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
                      child: Text('BREAKFAST (200 kcal)', style: TextStyle(
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
                              'assets12/images12/t.jpeg',
                              height: 200,
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
                          child: Text('LUNCH', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),),
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
                                    'assets12/images12/u.jpeg',
                                    height: 200,
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
                                title: Text(lunch[index] + "\n"),
                              );
                            }
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('DINNER', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),),
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
                                    'assets12/images12/e.jpg',
                                    height: 200,
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
