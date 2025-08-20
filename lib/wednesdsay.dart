
import 'package:flutter/material.dart';

class wednesdayThaiGut extends StatefulWidget {
  const wednesdayThaiGut({super.key});

  @override
  State<wednesdayThaiGut> createState() => _wednesdayThaiGutState();
}

class _wednesdayThaiGutState extends State<wednesdayThaiGut> {

  final List<String> breakfast = [
    "Thai Coconut Yogurt Parfait (No added sugar)"
        "Calories: 200 kcal"
        "Proteins: 6g"
        "Carbohydrates: 25g"
        "Fats: 10g"
        "Fibre: 4g",

    "Herbal Tea (Chamomile)"
        "Calories: 0 kcal"
        "Fibre: 0g"
  ];

  final List<String> lunch = [
    "1 Bowl Tom Yum Soup (No chili)"
        "Calories: 150 kcal"
        "Protein: 10g"
        "Carbohydrates: 8g"
        "Fats: 6g"
        "Fibre: 2g",

    "1 Cup Steamed Jasmine Rice"
        "Calories: 205 kcal"
        "Protein: 4g"
        "Carbohydrates: 45g"
        "Fibre: 1g"
        "Fats: 0g",

    "Thai Mango Salad (No chili, mild dressing)"
        "Calories: 120 kcal"
        "Carbohydrates: 30g"
        "Protein: 3g"
        "Fats: 2g"
        "Fibre: 5g"
  ];

  final List<String> dinner = [
    "1 Bowl Thai Stir-fried Tofu with Basil"
        "Calories: 200 kcal"
        "Protein: 15g"
        "Carbohydrates: 12g"
        "Fats: 12g"
        "Fibre: 5g",

    "1 Bowl Steamed Vegetables (Carrot, Broccoli, Zucchini)"
        "Calories: 100 kcal"
        "Carbohydrates: 20g"
        "Protein: 3g"
        "Fats: 2g"
        "Fibre: 6g",

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
            'WEDNESDAY (Thai Gut Diet)',
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
                              'assets2/images2/coconut_yogurt_parfait.jpg', height: 200,
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
                                    'assets2/images2/stir_fried_tofu.jpg', height: 200,
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
