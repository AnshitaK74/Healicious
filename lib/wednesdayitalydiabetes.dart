import 'package:flutter/material.dart';

class WednesdayItalianDiabetes extends StatefulWidget {
  const WednesdayItalianDiabetes({super.key});

  @override
  State<WednesdayItalianDiabetes> createState() => _WednesdayItalianDiabetesState();
}

class _WednesdayItalianDiabetesState extends State<WednesdayItalianDiabetes> {
  final List<String> breakfast = [
    "Oats with Skim Milk, Walnuts, and Blueberries",
    "Calories: 240 kcal",
    "Proteins: 10g",
    "Carbohydrates: 28g",
    "Fats: 8g",
    "Fibre: 5g",
    "1 cup Unsweetened Chamomile Tea",
    "Calories: 2 kcal",
    "Fibre: 0g",
  ];

  final List<String> lunch = [
    "Grilled Chicken Breast with Spinach and Tomato",
    "Calories: 260 kcal",
    "Protein: 28g",
    "Carbohydrates: 6g",
    "Fats: 12g",
    "Fibre: 2g",
    "1/2 cup Cooked Lentils",
    "Calories: 120 kcal",
    "Protein: 9g",
    "Carbohydrates: 20g",
    "Fibre: 8g",
    "Fats: 0.5g",
  ];

  final List<String> dinner = [
    "Zucchini Noodles with Tomato Basil Sauce",
    "Calories: 150 kcal",
    "Protein: 4g",
    "Carbohydrates: 14g",
    "Fats: 7g",
    "Fibre: 4g",
    "Side of Roasted Bell Peppers",
    "Calories: 40 kcal",
    "Carbohydrates: 6g",
    "Fibre: 2g",
    "Protein: 1g",
    "Fats: 1g",
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
          'Wednesday',
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
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets12/images12/v.jpeg',
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
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets12/images12/z.jpeg',
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
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets12/images12/e.jpg',
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
