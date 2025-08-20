import 'package:flutter/material.dart';

class WednesdayChinaGut extends StatefulWidget {
  const WednesdayChinaGut({super.key});

  @override
  State<WednesdayChinaGut> createState() => _WednesdayChinaGutState();
}

class _WednesdayChinaGutState extends State<WednesdayChinaGut> {
  final List<String> breakfast = [
    "1 small bowl of rice porridge with pumpkin",
    "Calories: 140 kcal",
    "Protein: 2 g",
    "Carbohydrates: 30 g",
    "Fibre: 2 g",
    "Fats: 1 g",
    "Steamed soft tofu with light soy drizzle",
    "Calories: 70 kcal",
    "Protein: 7 g",
    "Carbohydrates: 2 g",
    "Fibre: 1 g",
    "Fats: 4 g",
  ];

  final List<String> lunch = [
    "Boiled chicken with napa cabbage",
    "Calories: 190 kcal",
    "Protein: 24 g",
    "Carbs: 2 g",
    "Fats: 10 g",
    "Fiber: 2 g",
    "1 bowl mung bean soup (salt-free)",
    "Calories: 100 kcal",
    "Protein: 7 g",
    "Carbs: 18 g",
    "Fats: 1 g",
    "Fiber: 4 g",
    "½ small bowl millet rice",
    "Calories: 110 kcal",
    "Protein: 3 g",
    "Carbs: 22 g",
    "Fats: 1 g",
    "Fiber: 1.3 g",
  ];

  final List<String> dinner = [
    "Rice congee with soft-cooked spinach",
    "Calories: 130 kcal",
    "Protein: 3 g",
    "Carbs: 26 g",
    "Fat: 1 g",
    "Fiber: 2 g",
    "Steamed egg custard",
    "Calories: 90 kcal",
    "Protein: 6 g",
    "Carbs: 2 g",
    "Fat: 6 g",
    "Fiber: 0 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.45;
    final imageHeight = screenHeight * 0.25;
    final fontSizeTitle = screenWidth * 0.07; // AppBar title
    final fontSizeText = screenWidth * 0.05; // Section headings & list text

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wednesday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Breakfast
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                    fontSize: fontSizeText,
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
                  'assets15/images15/old.jpeg',
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

            // Lunch
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(16, 0),
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeText,
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
                  'assets15/images15/poda.jpeg',
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

            // Dinner
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(16, 0),
                child: Text(
                  'DINNER',
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeText,
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
                  'assets15/images15/wrinkle.jpeg',
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
