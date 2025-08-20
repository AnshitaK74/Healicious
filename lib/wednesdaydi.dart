import 'package:flutter/material.dart';

class WednesdayPCOSThaji extends StatefulWidget {
  const WednesdayPCOSThaji({super.key});

  @override
  State<WednesdayPCOSThaji> createState() => _WednesdayPCOSThajiState();
}

class _WednesdayPCOSThajiState extends State<WednesdayPCOSThaji> {
  final List<String> breakfast = [
    "1 bowl unsweetened Thai coconut yogurt with chia seeds and cucumber slices",
    "Calories: 160 kcal",
    "Carbohydrates: 10 g",
    "Protein: 6 g",
    "Fats: 11 g",
    "Fibre: 4 g",
    "1 cup lemon grass tea (unsweetened)",
    "Calories: 0 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g",
    "1 boiled egg",
    "Calories: 68 kcal",
    "Carbohydrates: 0.6 g",
    "Protein: 6 g",
    "Fats: 5 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl Thai tofu curry (light coconut milk, less oil)",
    "Calories: 280 kcal",
    "Carbohydrates: 14 g",
    "Protein: 15 g",
    "Fats: 18 g",
    "Fibre: 5 g",
    "1 small bowl red rice",
    "Calories: 110 kcal",
    "Carbohydrates: 22 g",
    "Protein: 2 g",
    "Fats: 1 g",
    "Fibre: 2 g",
    "1 cup Thai cucumber and mint salad",
    "Calories: 60 kcal",
    "Carbohydrates: 6 g",
    "Protein: 1 g",
    "Fats: 3 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai-style steamed fish with lemon and herbs",
    "Calories: 240 kcal",
    "Carbohydrates: 6 g",
    "Protein: 30 g",
    "Fats: 10 g",
    "Fibre: 2 g",
    "1 cup sautéed cabbage and beans in olive oil",
    "Calories: 70 kcal",
    "Carbohydrates: 8 g",
    "Protein: 2 g",
    "Fats: 4 g",
    "Fibre: 3 g"
  ];

  bool isFoodItem(String text) {
    return !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("protein") &&
        !text.toLowerCase().contains("fats") &&
        !text.toLowerCase().contains("fibre");
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
          'Wednesday',
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets20/images20/h.jpeg',
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
