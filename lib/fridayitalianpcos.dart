import 'package:flutter/material.dart';

class FridayPCOSItalianDishes extends StatefulWidget {
  const FridayPCOSItalianDishes({super.key});

  @override
  State<FridayPCOSItalianDishes> createState() => _FridayPCOSItalianDishesState();
}

class _FridayPCOSItalianDishesState extends State<FridayPCOSItalianDishes> {

  final List<String> breakfast = [
    "Greek Yogurt with Chia Seeds and Almonds",
    "Calories: 260 kcal",
    "Protein: 20g",
    "Carbohydrates: 10g",
    "Fats: 15g",
    "Fibre: 5g",
    "Herbal Tea (unsweetened)",
    "Calories: 2 kcal"
  ];

  final List<String> lunch = [
    "Zucchini Noodles with Grilled Chicken and Pesto",
    "Calories: 330 kcal",
    "Protein: 35g",
    "Carbohydrates: 8g",
    "Fats: 18g",
    "Fibre: 3g",
    "Side of Mixed Leafy Greens with Olive Oil",
    "Calories: 60 kcal",
    "Protein: 2g",
    "Carbohydrates: 4g",
    "Fats: 5g",
    "Fibre: 2g"
  ];

  final List<String> dinner = [
    "Baked Cod with Tomato and Olive Tapenade",
    "Calories: 300 kcal",
    "Protein: 32g",
    "Carbohydrates: 6g",
    "Fats: 14g",
    "Fibre: 1g",
    "Steamed Asparagus",
    "Calories: 25 kcal",
    "Protein: 2g",
    "Carbohydrates: 4g",
    "Fats: 0g",
    "Fibre: 2g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
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
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets11/images11/e.jpeg',
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
                    fontSize: fontSizeTitle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets11/images11/b.jpeg',
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
                    fontSize: fontSizeTitle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets11/images11/c.jpeg',
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
