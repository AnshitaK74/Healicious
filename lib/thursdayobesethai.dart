import 'package:flutter/material.dart';

class thursdayddl extends StatefulWidget {
  const thursdayddl({super.key});

  @override
  State<thursdayddl> createState() => _thursdayddlState();
}

class _thursdayddlState extends State<thursdayddl> {
  final List<String> breakfast = [
    "1 bowl Thai-style congee with vegetables (no oil)",
    "Calories: 180 kcal",
    "Carbohydrates: 28 g",
    "Protein: 6 g",
    "Fats: 3 g",
    "Fibre: 2 g",
    "1 boiled egg",
    "Calories: 78 kcal",
    "Carbohydrates: 1 g",
    "Protein: 6 g",
    "Fats: 5 g",
    "Fibre: 0 g",
    "1 cup lemongrass tea (no sugar)",
    "Calories: 2 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl Thai green papaya salad (som tum, no peanuts)",
    "Calories: 120 kcal",
    "Carbohydrates: 15 g",
    "Protein: 2 g",
    "Fats: 5 g",
    "Fibre: 3 g",
    "1 medium bowl red rice",
    "Calories: 160 kcal",
    "Carbohydrates: 30 g",
    "Protein: 4 g",
    "Fats: 2 g",
    "Fibre: 2 g",
    "1 cup steamed tofu and vegetables with soy-lime dressing",
    "Calories: 100 kcal",
    "Carbohydrates: 8 g",
    "Protein: 7 g",
    "Fats: 4 g",
    "Fibre: 3 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai spicy pumpkin soup (low-fat coconut milk)",
    "Calories: 150 kcal",
    "Carbohydrates: 16 g",
    "Protein: 4 g",
    "Fats: 6 g",
    "Fibre: 3 g",
    "1 cup sautéed bok choy with garlic and chili (low oil)",
    "Calories: 80 kcal",
    "Carbohydrates: 6 g",
    "Protein: 3 g",
    "Fats: 5 g",
    "Fibre: 3 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // ✅ MediaQuery for responsive sizing
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
                  'assets20/images20/b.jpeg',
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
                }),

            // LUNCH
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
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
                  'assets20/images20/g.jpeg',
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
                }),

            // DINNER
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
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
                            ? Colors.green.shade700
                            : Colors.black,
                        fontWeight: isFoodItem(dinner[index])
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
