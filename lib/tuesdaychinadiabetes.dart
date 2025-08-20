import 'package:flutter/material.dart';

class TuesdayDiabetesChineseDishes extends StatefulWidget {
  const TuesdayDiabetesChineseDishes({super.key});

  @override
  State<TuesdayDiabetesChineseDishes> createState() => _TuesdayDiabetesChineseDishesState();
}

class _TuesdayDiabetesChineseDishesState extends State<TuesdayDiabetesChineseDishes> {

  final List<String> breakfast = [
    "Steamed Bao Buns with Vegetables",
    "Calories: 180 kcal",
    "Protein: 5g",
    "Carbohydrates: 28g",
    "Fats: 6g",
    "Fibre: 2g",

    "Green Tea",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "1 Bowl Stir-fried Shrimp with Vegetables",
    "Calories: 250 kcal",
    "Protein: 30g",
    "Carbohydrates: 10g",
    "Fats: 12g",
    "Fibre: 3g",

    "1 Cup Brown Rice",
    "Calories: 165 kcal",
    "Protein: 3.5g",
    "Carbohydrates: 34g",
    "Fibre: 1.8g",
    "Fats: 1.3g",

    "1 Bowl Hot and Sour Soup",
    "Calories: 80 kcal",
    "Protein: 6g",
    "Carbohydrates: 12g",
    "Fats: 2g",
    "Fibre: 2g",
  ];

  final List<String> dinner = [
    "1 Bowl Stir-fried Chicken with Bok Choy",
    "Calories: 250 kcal",
    "Protein: 30g",
    "Carbohydrates: 12g",
    "Fats: 10g",
    "Fibre: 4g",

    "1 Cup Steamed Broccoli",
    "Calories: 55 kcal",
    "Protein: 5g",
    "Carbohydrates: 11g",
    "Fats: 0g",
    "Fibre: 4g",

    "1 Cup Jasmine Tea (unsweetened)",
    "Calories: 2 kcal",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness
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
          'Tuesday',
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
                child: Text('BREAKFAST (~180 kcal)',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/thurs.jpeg',
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
                      color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,
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
                child: Text('LUNCH',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/49.jpeg',
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
                      color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
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
                child: Text('DINNER',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/tue.jpeg',
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
                      color: isFoodItem(dinner[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(dinner[index]) ? FontWeight.bold : FontWeight.normal,
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
