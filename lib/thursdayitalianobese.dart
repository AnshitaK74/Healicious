import 'package:flutter/material.dart';

class ThursdayItalianObesityy1 extends StatefulWidget {
  const ThursdayItalianObesityy1({super.key});

  @override
  State<ThursdayItalianObesityy1> createState() =>
      _ThursdayItalianObesityy1State();
}

class _ThursdayItalianObesityy1State extends State<ThursdayItalianObesityy1> {
  final List<String> breakfast = [
    "Ricotta Cheese with Berries and Almonds",
    "Calories: 280 kcal",
    "Proteins: 14g",
    "Carbohydrates: 10g",
    "Fats: 20g",
    "Fibre: 3g",
    "Herbal Tea",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "Grilled Shrimp with Garlic and Olive Oil",
    "Calories: 250 kcal",
    "Protein: 30g",
    "Carbohydrates: 5g",
    "Fats: 15g",
    "Fibre: 2g",
    "Cauliflower Rice",
    "Calories: 50 kcal",
    "Protein: 2g",
    "Carbohydrates: 10g",
    "Fats: 2g",
    "Fibre: 4g",
    "Mixed Greens with Balsamic Vinegar",
    "Calories: 80 kcal",
    "Fats: 7g",
    "Fibre: 3g",
  ];

  final List<String> dinner = [
    "Baked Eggplant Parmesan (light version)",
    "Calories: 350 kcal",
    "Protein: 15g",
    "Carbohydrates: 25g",
    "Fats: 18g",
    "Fibre: 6g",
    "Steamed Broccoli with Olive Oil",
    "Calories: 120 kcal",
    "Carbohydrates: 10g",
    "Fats: 9g",
    "Fibre: 5g",
    "Tomato Basil Soup (light)",
    "Calories: 150 kcal",
    "Carbohydrates: 15g",
    "Fats: 8g",
    "Fibre: 3g",
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
          'Thursday',
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
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets11/images11/q.jpeg",
                  width: imageWidth,
                  height: imageHeight,
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
                            : FontWeight.normal),
                  ),
                );
              },
            ),

            // LUNCH
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets11/images11/g.jpeg",
                  width: imageWidth,
                  height: imageHeight,
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
                            : FontWeight.normal),
                  ),
                );
              },
            ),

            // DINNER
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'DINNER',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets11/images11/j.jpg",
                  width: imageWidth,
                  height: imageHeight,
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
                            ? Colors.green.shade700
                            : Colors.black,
                        fontWeight: isFoodItem(dinner[index])
                            ? FontWeight.bold
                            : FontWeight.normal),
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
