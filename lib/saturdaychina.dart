import 'package:flutter/material.dart';

class SaturdayChineseDiet extends StatefulWidget {
  const SaturdayChineseDiet({super.key});

  @override
  State<SaturdayChineseDiet> createState() => _SaturdayChineseDietState();
}

class _SaturdayChineseDietState extends State<SaturdayChineseDiet> {
  final List<String> breakfast = [
    "Steamed Egg with Tofu",
    "Calories: 210 kcal",
    "Protein: 16g",
    "Carbohydrates: 5g",
    "Fats: 14g",
    "Fiber: 3g",

    "1 Glass Fresh Orange Juice",
    "Calories: 110 kcal",
    "Carbohydrates: 25g",
    "Protein: 1g",
    "Fats: 0g",
    "Fiber: 0g",
  ];

  final List<String> lunch = [
    "1 Bowl Stir-fried Chicken with Vegetables",
    "Calories: 320 kcal",
    "Protein: 28g",
    "Carbohydrates: 15g",
    "Fats: 18g",
    "Fiber: 6g",

    "1/2 Cup Quinoa",
    "Calories: 111 kcal",
    "Protein: 4g",
    "Carbohydrates: 19g",
    "Fats: 2g",
    "Fiber: 2g",
  ];

  final List<String> dinner = [
    "1 Bowl Sweet and Sour Shrimp",
    "Calories: 250 kcal",
    "Protein: 30g",
    "Carbohydrates: 10g",
    "Fats: 10g",
    "Fiber: 2g",

    "1 Bowl Stir-fried Kale with Garlic",
    "Calories: 100 kcal",
    "Protein: 5g",
    "Carbohydrates: 12g",
    "Fats: 4g",
    "Fiber: 5g",
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
            color: Colors.green.shade800,
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
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets16/images16/14.jpeg', // Replace with your image path
                        height: 200,
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
                        title: Text(breakfast[index],style: TextStyle(
                          color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                          fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,

                        )),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:Transform.translate(offset:Offset(16,0),
                    child: Text(
                      'LUNCH',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets16/images16/15.jpeg', // Replace with your image path
                              height: 200,
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
                        title: Text(lunch[index] ,style: TextStyle(
                          color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                          fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                        )),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:Transform.translate(offset:Offset(16,0),
                    child: Text(
                      'DINNER',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets16/images16/11.jpeg', // Replace with your image path
                              height: 200,
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
                        title: Text(dinner[index], style: TextStyle(
                          color: isFoodItem(dinner[index])
                              ? Colors.green.shade600
                              : Colors.black,
                          fontWeight: isFoodItem(dinner[index])
                              ? FontWeight.bold
                              : FontWeight.normal,


                        )),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
