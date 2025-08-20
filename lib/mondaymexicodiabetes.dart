import 'package:flutter/material.dart';

class mondaymexicandiabetes extends StatefulWidget {
  const mondaymexicandiabetes({super.key});

  @override
  State<mondaymexicandiabetes> createState() => _mondaymexicandiabetesState();
}

class _mondaymexicandiabetesState extends State<mondaymexicandiabetes> {
  final List<String> breakfast = [
    "Egg White & Spinach Scramble (Huevos a la Mexicana)",
    "Calories: 180 kcal",
    "Protein: 14g",
    "Carbohydrates: 6g",
    "Fats: 12g",
    "Fiber: 3g",
    "Black Coffee or Herbal Tea",
    "Calories: 2 kcal"
  ];

  final List<String> lunch = [
    "Chicken or Tofu Salad with Avocado, Cucumber, and Lime Dressing",
    "Calories: 300 kcal",
    "Protein: 20g",
    "Carbohydrates: 12g",
    "Fats: 20g",
    "Fiber: 8g",
    "1 small portion of Grilled Cactus (Nopal)",
    "Calories: 50 kcal",
    "Protein: 1g",
    "Carbohydrates: 10g",
    "Fats: 0g",
    "Fiber: 7g"
  ];

  final List<String> dinner = [
    "Grilled Fish (e.g. Tilapia or Salmon) with Sautéed Veggies",
    "Calories: 250 kcal",
    "Protein: 20g",
    "Carbohydrates: 6g",
    "Fats: 18g",
    "Fiber: 5g",
    "1 small serving of Mexican Cauliflower Rice",
    "Calories: 120 kcal",
    "Protein: 4g",
    "Carbohydrates: 9g",
    "Fats: 8g",
    "Fiber: 6g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery values
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;
    final borderRadius = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle + 10,
            color: Colors.green.shade800,
          ),
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
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets8/images8/z.jpeg',
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
                      color: isFoodItem(breakfast[index])
                          ? Colors.green.shade700
                          : Colors.black,
                      fontWeight: isFoodItem(breakfast[index])
                          ? FontWeight.bold
                          : FontWeight.normal,
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
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets8/images8/y.jpg',
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
                      color: isFoodItem(lunch[index])
                          ? Colors.green.shade700
                          : Colors.black,
                      fontWeight: isFoodItem(lunch[index])
                          ? FontWeight.bold
                          : FontWeight.normal,
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
                child: Text(
                  'DINNER',
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets8/images8/x.jpeg',
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
                      color: isFoodItem(dinner[index])
                          ? Colors.green.shade600
                          : Colors.black,
                      fontWeight: isFoodItem(dinner[index])
                          ? FontWeight.bold
                          : FontWeight.normal,
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
