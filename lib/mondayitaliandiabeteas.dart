import 'package:flutter/material.dart';

class MondayItalianDiabetes extends StatefulWidget {
  const MondayItalianDiabetes({super.key});

  @override
  State<MondayItalianDiabetes> createState() => _MondayItalianDiabetesState();
}

class _MondayItalianDiabetesState extends State<MondayItalianDiabetes> {
  final List<String> breakfast = [
    "1 slice Whole Grain Bruschetta with Tomato & Basil",
    "Calories: 180 kcal",
    "Proteins: 5g",
    "Carbohydrates: 22g",
    "Fats: 8g",
    "Fibre: 4g",
    "Unsweetened Espresso",
    "Calories: 2 kcal",
    "Fibre: 0g",
  ];

  final List<String> lunch = [
    "Zucchini Noodles with Tomato Sauce and Grilled Eggplant",
    "Calories: 220 kcal",
    "Protein: 6g",
    "Carbohydrates: 20g",
    "Fats: 10g",
    "Fibre: 5g",
    "1 small Mixed Leaf Salad with Olive Oil & Vinegar",
    "Calories: 60 kcal",
    "Protein: 1g",
    "Carbohydrates: 4g",
    "Fibre: 2g",
    "Fats: 5g",
  ];

  final List<String> dinner = [
    "Grilled Chicken Breast with Herbs",
    "Calories: 180 kcal",
    "Protein: 28g",
    "Carbohydrates: 0g",
    "Fats: 7g",
    "Fibre: 0g",
    "1/2 cup Lentil Soup",
    "Calories: 110 kcal",
    "Carbohydrates: 18g",
    "Protein: 6g",
    "Fats: 2g",
    "Fibre: 6g",
    "Steamed Broccoli with Lemon",
    "Calories: 30 kcal",
    "Carbohydrates: 6g",
    "Fibre: 2.5g",
    "Protein: 2g",
    "Fats: 0.3g",
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
                  'assets12/images12/s.webp',
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
                  'assets13/images13/multi.jpeg',
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
                  'assets12/images12/q.jpeg',
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
                return Padding(
                  padding: EdgeInsets.all(padding / 2),
                  child: ListTile(
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
