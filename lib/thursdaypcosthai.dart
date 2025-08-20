import 'package:flutter/material.dart';

class FridayPCOSThai extends StatefulWidget {
  const FridayPCOSThai({super.key});

  @override
  State<FridayPCOSThai> createState() => _FridayPCOSThaiState();
}

class _FridayPCOSThaiState extends State<FridayPCOSThai> {
  final List<String> breakfast = [
    "1 bowl Thai vegetable congee with tofu",
    "Calories: 230 kcal",
    "Carbohydrates: 28 g",
    "Protein: 10 g",
    "Fats: 6 g",
    "Fibre: 3 g",
    "1 glass unsweetened soy milk",
    "Calories: 100 kcal",
    "Carbohydrates: 4 g",
    "Protein: 7 g",
    "Fats: 4 g",
    "Fibre: 1 g"
  ];

  final List<String> lunch = [
    "1 bowl Thai green curry with tofu and vegetables (coconut milk base)",
    "Calories: 320 kcal",
    "Carbohydrates: 14 g",
    "Protein: 18 g",
    "Fats: 22 g",
    "Fibre: 4 g",
    "1 small bowl red rice",
    "Calories: 130 kcal",
    "Carbohydrates: 26 g",
    "Protein: 3 g",
    "Fats: 1 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "1 plate Thai stir-fried prawns with garlic and basil",
    "Calories: 280 kcal",
    "Carbohydrates: 10 g",
    "Protein: 28 g",
    "Fats: 14 g",
    "Fibre: 2 g",
    "1 bowl cucumber and seaweed salad with sesame",
    "Calories: 70 kcal",
    "Carbohydrates: 6 g",
    "Protein: 2 g",
    "Fats: 4 g",
    "Fibre: 2 g"
  ];

  bool isMainFoodItem(String text) {
    return !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("protein") &&
        !text.toLowerCase().contains("fats") &&
        !text.toLowerCase().contains("fibre");
  }

  Widget buildMealSection(String title, String imagePath, List<String> items,
      double screenWidth, double screenHeight) {
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final cardRadius = screenWidth * 0.04;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.02, horizontal: screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: fontSizeTitle,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: screenHeight * 0.015),
          Center(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cardRadius)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(cardRadius),
                child: Image.asset(
                  imagePath,
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.015),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final isFood = isMainFoodItem(items[index]);
              return ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  items[index],
                  style: TextStyle(
                    fontSize: fontSizeText,
                    fontWeight: isFood ? FontWeight.bold : FontWeight.normal,
                    color: isFood ? Colors.green.shade700 : Colors.black87,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
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
              fontSize: screenWidth * 0.06,
              color: Colors.green.shade800),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green.shade800),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildMealSection(
                "BREAKFAST", 'assets20/images20/b.jpeg', breakfast, screenWidth, screenHeight),
            buildMealSection(
                "LUNCH", 'assets20/images20/h.jpeg', lunch, screenWidth, screenHeight),
            buildMealSection(
                "DINNER", 'assets20/images20/h.jpeg', dinner, screenWidth, screenHeight),
          ],
        ),
      ),
    );
  }
}
