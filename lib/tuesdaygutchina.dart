import 'package:flutter/material.dart';

class TuesdayChinaGut extends StatefulWidget {
  const TuesdayChinaGut({super.key});

  @override
  State<TuesdayChinaGut> createState() => _TuesdayChinaGutState();
}

class _TuesdayChinaGutState extends State<TuesdayChinaGut> {
  final List<String> breakfast = [
    "1 bowl of warm congee with soft-cooked carrots",
    "Calories: 130 kcal",
    "Protein: 2 g",
    "Carbohydrates: 28 g",
    "Fibre: 1 g",
    "Fats: 1 g",
    "1 small serving of lightly boiled bok choy",
    "Calories: 15 kcal",
    "Protein: 1 g",
    "Carbohydrates: 2 g",
    "Fibre: 1 g",
    "Fats: 0 g",
  ];

  final List<String> lunch = [
    "Steamed fish with ginger and scallions",
    "Calories: 180 kcal",
    "Protein: 22 g",
    "Carbs: 1 g",
    "Fiber: 0 g",
    "1 bowl of soft steamed pumpkin",
    "Calories: 45 kcal",
    "Protein: 1 g",
    "Carbs: 10 g",
    "Fats: 0.2 g",
    "Fiber: 2 g",
    "½ small bowl of jasmine rice",
    "Calories: 100 kcal",
    "Protein: 2 g",
    "Carbs: 22 g",
    "Fats: 0.5 g",
    "Fiber: 0.3 g",
  ];

  final List<String> dinner = [
    "1 bowl of rice noodle soup with tofu and soft veggies",
    "Calories: 180 kcal",
    "Protein: 6 g",
    "Carbs: 30 g",
    "Fat: 4 g",
    "Fiber: 2 g",
    "1 small serving of stir-fried zucchini with garlic",
    "Calories: 40 kcal",
    "Protein: 1 g",
    "Carbs: 4 g",
    "Fat: 2 g",
    "Fiber: 1 g",
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
          'Tuesday',
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
            // Breakfast section
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
                  'assets16/images16/duck.jpeg',
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

            // Lunch section
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
                  'assets16/images16/e.jpeg',
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

            // Dinner section
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
                  'assets16/images16/fri.jpeg',
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
