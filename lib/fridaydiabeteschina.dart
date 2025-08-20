import 'package:flutter/material.dart';

class FridayDiabetesChineseDishes extends StatefulWidget {
  const FridayDiabetesChineseDishes({super.key});

  @override
  State<FridayDiabetesChineseDishes> createState() => _FridayDiabetesChineseDishesState();
}

class _FridayDiabetesChineseDishesState extends State<FridayDiabetesChineseDishes> {

  final List<String> breakfast = [
    "Egg Foo Young (1 piece with vegetables, no sauce)",
    "Calories: 160 kcal",
    "Protein: 10g",
    "Carbohydrates: 4g",
    "Fats: 12g",
    "Fibre: 1g",

    "Green Tea (unsweetened)",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "Grilled Chicken with Chinese Mustard Greens",
    "Calories: 250 kcal",
    "Protein: 28g",
    "Carbohydrates: 6g",
    "Fats: 12g",
    "Fibre: 3g",

    "1 Cup Cauliflower Fried Rice (no soy sauce)",
    "Calories: 90 kcal",
    "Protein: 4g",
    "Carbohydrates: 8g",
    "Fibre: 2g",
    "Fats: 5g",

    "1 Bowl Clear Soup with Mushrooms and Bok Choy",
    "Calories: 50 kcal",
    "Protein: 3g",
    "Carbohydrates: 5g",
    "Fats: 1g",
    "Fibre: 1.5g",
  ];

  final List<String> dinner = [
    "Stir-fried Tempeh with Chinese Spinach",
    "Calories: 220 kcal",
    "Protein: 15g",
    "Carbohydrates: 10g",
    "Fats: 14g",
    "Fibre: 3g",

    "1 Cup Steamed Edamame (light salt)",
    "Calories: 120 kcal",
    "Protein: 11g",
    "Carbohydrates: 9g",
    "Fats: 5g",
    "Fibre: 4g",

    "1 Cup Jasmine Flower Tea (unsweetened)",
    "Calories: 2 kcal",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // Responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friday',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSizeTitle + 10,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BREAKFAST
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('BREAKFAST (~160 kcal)',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/q.jpeg',
                  height: imageHeight,
                  width: imageWidth,
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
                      fontSize: fontSizeText,
                      color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),

            // LUNCH
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
                child: Text('LUNCH',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/tofu.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
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
                      fontSize: fontSizeText,
                      color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),

            // DINNER
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
                child: Text('DINNER',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/s.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
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
                      fontSize: fontSizeText,
                      color: isFoodItem(dinner[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(dinner[index]) ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
