import 'package:flutter/material.dart';

class FridayItalianObesityy extends StatefulWidget {
  const FridayItalianObesityy({super.key});

  @override
  State<FridayItalianObesityy> createState() => _FridayItalianObesityyState();
}

class _FridayItalianObesityyState extends State<FridayItalianObesityy> {

  final List<String> breakfast = [
    "Caprese Salad (Tomatoes, Mozzarella, Basil, and Olive Oil)",
    "Calories: 300 kcal",
    "Proteins: 15g",
    "Carbohydrates: 10g",
    "Fats: 25g",
    "Fibre: 4g",
    "Herbal Tea",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "Grilled Chicken with Lemon and Herbs",
    "Calories: 300 kcal",
    "Protein: 35g",
    "Carbohydrates: 5g",
    "Fats: 16g",
    "Fibre: 3g",
    "Zucchini Noodles (Zoodles)",
    "Calories: 40 kcal",
    "Protein: 3g",
    "Carbohydrates: 8g",
    "Fats: 1g",
    "Fibre: 2g",
    "Tomato Salad with Olive Oil and Vinegar",
    "Calories: 80 kcal",
    "Protein: 1g",
    "Carbohydrates: 7g",
    "Fats: 7g",
  ];

  final List<String> dinner = [
    "Grilled Salmon with Olive Oil and Lemon",
    "Calories: 350 kcal",
    "Protein: 35g",
    "Carbohydrates: 0g",
    "Fats: 22g",
    "Fibre: 0g",
    "Sautéed Spinach with Garlic and Olive Oil",
    "Calories: 120 kcal",
    "Carbohydrates: 10g",
    "Fats: 8g",
    "Fibre: 4g",
    "Cauliflower Mash",
    "Calories: 150 kcal",
    "Carbohydrates: 15g",
    "Fats: 8g",
    "Fibre: 4g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friday',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.08,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                      fontSize: screenWidth * 0.05,
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
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets11/images11/j.jpg',
                        height: screenHeight * 0.25,
                        width: screenWidth * 0.45,
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
                        title: Text(
                          breakfast[index],
                          style: TextStyle(
                            color: isFoodItem(breakfast[index])
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(breakfast[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Transform.translate(
                      offset: Offset(screenWidth * 0.04, 0),
                      child: Text(
                        'LUNCH',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.normal,
                            fontSize: screenWidth * 0.05),
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
                              'assets10/images10/y.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.45,
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
                        title: Text(
                          lunch[index],
                          style: TextStyle(
                            color: isFoodItem(lunch[index])
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(lunch[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Transform.translate(
                      offset: Offset(screenWidth * 0.04, 0),
                      child: Text(
                        'DINNER',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.normal,
                            fontSize: screenWidth * 0.05),
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
                              'assets10/images10/z.webp',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.45,
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
                        title: Text(
                          dinner[index],
                          style: TextStyle(
                            color: isFoodItem(dinner[index])
                                ? Colors.green.shade600
                                : Colors.black,
                            fontWeight: isFoodItem(dinner[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
