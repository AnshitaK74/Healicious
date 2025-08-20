import 'package:flutter/material.dart';

class SaturdayMexicanPCOSDiet extends StatefulWidget {
  const SaturdayMexicanPCOSDiet({super.key});

  @override
  State<SaturdayMexicanPCOSDiet> createState() => _SaturdayMexicanPCOSDietState();
}

class _SaturdayMexicanPCOSDietState extends State<SaturdayMexicanPCOSDiet> {

  final List<String> breakfast = [
    "Avocado Toast on Whole Wheat Bread (1 slice)",
        "Calories: 220 kcal",
        "Protein: 5g",
        "Carbohydrates: 20g",
        "Fat: 15g",
        "Fibre: 7g",

    "Black Coffee or Herbal Tea (1 cup)"
        "Calories: 0 kcal",
  ];

  final List<String> lunch = [
    "Chicken Tacos with Lettuce, Tomato, and Guacamole (2 tacos)",
        "Calories: 350 kcal",
        "Protein: 30g",
        "Carbohydrates: 25g",
        "Fat: 18g",
        "Fibre: 5g",

    "Side of Cabbage Slaw (1/2 cup)",
        "Calories: 50 kcal",
        "Carbohydrates: 10g",
        "Protein: 2g",
        "Fat: 1g",
        "Fibre: 4g",
  ];

  final List<String> dinner = [
    "Grilled Shrimp with Zucchini and Bell Peppers (1 serving)",
        "Calories: 250 kcal",
        "Protein: 20g",
        "Carbohydrates: 15g",
        "Fat: 12g",
        "Fibre: 4g",

    "Mexican Cauliflower Rice (1/2 cup)",
        "Calories: 80 kcal",
        "Protein: 3g",
        "Carbohydrates: 15g",
        "Fat: 5g",
        "Fibre: 4g",
  ];


  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Saturday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BREAKFAST ', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800),
                      ),
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
                              'assets7/images7/ohho.webp', height: 200,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: breakfast.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(breakfast[index],
                                    style: TextStyle(
                                      color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                                      fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,

                                    )),
                              );
                            }
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Transform.translate(offset: Offset(16,0),
                          child: Text('LUNCH', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                          ),
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
                                    'assets7/images7/ttp.jpeg', height: 200,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
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
                                title: Text(lunch[index] ,
                                  style: TextStyle(
                                    color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                                    fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                                  ),),
                              );
                            }
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Transform.translate(offset: Offset(16,0),
                          child: Text('DINNER', style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                          ),
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
                                    'assets7/images7/taco.jpg', height: 200,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
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
                                title: Text(dinner[index],
                                    style: TextStyle(
                                      color: isFoodItem(dinner[index])
                                          ? Colors.green.shade600
                                          : Colors.black,
                                      fontWeight: isFoodItem(dinner[index])
                                          ? FontWeight.bold
                                          : FontWeight.normal,


                                    )

                                ),
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
