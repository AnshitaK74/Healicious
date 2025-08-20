import 'package:flutter/material.dart';

class FridayChineseDiet extends StatefulWidget {
  const FridayChineseDiet({super.key});

  @override
  State<FridayChineseDiet> createState() => _FridayChineseDietState();
}

class _FridayChineseDietState extends State<FridayChineseDiet> {
  final List<String> breakfast = [
    "Chinese-style Scrambled Eggs with Spinach",
    "Calories: 220 kcal",
    "Protein: 18g",
    "Carbohydrates: 5g",
    "Fats: 15g",
    "Fiber: 4g",
    "1 Glass Fresh Apple Juice",
    "Calories: 100 kcal",
    "Carbohydrates: 25g",
    "Protein: 1g",
    "Fats: 0g",
    "Fiber: 0g",
  ];

  final List<String> lunch = [
    "1 Bowl Stir-fried Tofu with Mushrooms",
    "Calories: 250 kcal",
    "Protein: 18g",
    "Carbohydrates: 15g",
    "Fats: 15g",
    "Fiber: 5g",
    "1/2 Cup Brown Rice",
    "Calories: 110 kcal",
    "Protein: 3g",
    "Carbohydrates: 24g",
    "Fats: 1g",
    "Fiber: 1.5g",
  ];

  final List<String> dinner = [
    "1 Bowl Steamed Fish with Ginger and Spring Onion",
    "Calories: 280 kcal",
    "Protein: 35g",
    "Carbohydrates: 8g",
    "Fats: 15g",
    "Fiber: 4g",
    "1 Bowl Stir-fried Broccoli with Garlic",
    "Calories: 80 kcal",
    "Protein: 3g",
    "Carbohydrates: 12g",
    "Fats: 4g",
    "Fiber: 5g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double imageHeight = screenHeight * 0.25;
    double imageWidth = screenWidth * 0.4;
    double fontSizeTitle = screenWidth * 0.05;
    double fontSizeText = screenWidth * 0.04;
    double padding = screenWidth * 0.04;

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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/f.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
            Padding(
              padding: EdgeInsets.only(left: padding, top: padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LUNCH',
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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/i.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
            Padding(
              padding: EdgeInsets.only(left: padding, top: padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'DINNER',
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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/1.jpeg',
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dinner.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    dinner[index],
                    style: TextStyle(
                      fontSize: fontSizeText,
                      color: isFoodItem(dinner[index])
                          ? Colors.green.shade700
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
