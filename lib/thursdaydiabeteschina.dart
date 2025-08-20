import 'package:flutter/material.dart';

class ThursdayDiabetesChineseDishes extends StatefulWidget {
  const ThursdayDiabetesChineseDishes({super.key});

  @override
  State<ThursdayDiabetesChineseDishes> createState() => _ThursdayDiabetesChineseDishesState();
}

class _ThursdayDiabetesChineseDishesState extends State<ThursdayDiabetesChineseDishes> {

  final List<String> breakfast = [
    "Steamed Vegetable Dumplings (2 pcs)",
    "Calories: 150 kcal",
    "Protein: 5g",
    "Carbohydrates: 20g",
    "Fats: 4g",
    "Fibre: 2g",

    "Oolong Tea (unsweetened)",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "Stir-fried Shrimp with Garlic and Broccoli",
    "Calories: 240 kcal",
    "Protein: 28g",
    "Carbohydrates: 10g",
    "Fats: 10g",
    "Fibre: 3g",

    "1 Cup Steamed Quinoa",
    "Calories: 170 kcal",
    "Protein: 6g",
    "Carbohydrates: 30g",
    "Fibre: 3g",
    "Fats: 3g",

    "1 Bowl Cabbage Soup",
    "Calories: 60 kcal",
    "Protein: 3g",
    "Carbohydrates: 10g",
    "Fats: 2g",
    "Fibre: 2g",
  ];

  final List<String> dinner = [
    "Stir-fried Tofu with Green Beans",
    "Calories: 210 kcal",
    "Protein: 14g",
    "Carbohydrates: 12g",
    "Fats: 13g",
    "Fibre: 4g",

    "1 Cup Mixed Stir-fried Veggies (no corn)",
    "Calories: 80 kcal",
    "Protein: 3g",
    "Carbohydrates: 12g",
    "Fats: 3g",
    "Fibre: 4g",

    "1 Cup Chrysanthemum Tea (unsweetened)",
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
          'Thursday',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSizeTitle + 10,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // BREAKFAST
          Padding(
            padding: EdgeInsets.all(padding),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('BREAKFAST (~150 kcal)',
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
                'assets16/images16/pear.jpeg',
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
                  title: Text(breakfast[index],
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                        fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,
                      )),
                );
              }),

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
                'assets5/images5/kimchi2.jpg',
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
                  title: Text(lunch[index],
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                        fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                      )),
                );
              }),

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
                'assets15/images15/y.jpeg',
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
                  title: Text(dinner[index],
                      style: TextStyle(
                        fontSize: fontSizeText,
                        color: isFoodItem(dinner[index])
                            ? Colors.green.shade700
                            : Colors.black,
                        fontWeight: isFoodItem(dinner[index])
                            ? FontWeight.bold
                            : FontWeight.normal,
                      )),
                );
              }),
        ]),
      ),
    );
  }
}
