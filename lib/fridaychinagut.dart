import 'package:flutter/material.dart';

class FridayGutChineseDishes extends StatefulWidget {
  const FridayGutChineseDishes({super.key});

  @override
  State<FridayGutChineseDishes> createState() => _FridayGutChineseDishesState();
}

class _FridayGutChineseDishesState extends State<FridayGutChineseDishes> {
  final List<String> breakfast = [
    "Brown Rice Congee with Fermented Vegetables",
    "Calories: 180 kcal",
    "Protein: 4g",
    "Carbohydrates: 35g",
    "Fats: 2g",
    "Fibre: 3g",

    "Warm Ginger Tea (unsweetened)",
    "Calories: 4 kcal"
  ];

  final List<String> lunch = [
    "Steamed Fish with Garlic and Bok Choy",
    "Calories: 220 kcal",
    "Protein: 25g",
    "Carbohydrates: 6g",
    "Fats: 10g",
    "Fibre: 2g",

    "1 Cup Cooked Millet",
    "Calories: 207 kcal",
    "Protein: 6g",
    "Carbohydrates: 41g",
    "Fibre: 3g",
    "Fats: 2g",

    "1 Bowl Miso Soup (with seaweed & tofu)",
    "Calories: 60 kcal",
    "Protein: 5g",
    "Carbohydrates: 5g",
    "Fats: 2g",
    "Fibre: 2g"
  ];

  final List<String> dinner = [
    "Stir-fried Tempeh with Napa Cabbage",
    "Calories: 200 kcal",
    "Protein: 15g",
    "Carbohydrates: 10g",
    "Fats: 10g",
    "Fibre: 5g",

    "1 Cup Steamed Mixed Veggies with Ginger",
    "Calories: 70 kcal",
    "Protein: 3g",
    "Carbohydrates: 10g",
    "Fats: 2g",
    "Fibre: 4g",

    "1 Cup Pu-erh Tea (unsweetened)",
    "Calories: 2 kcal"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness (same style as diabetes & gut Saturday)
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
          'Friday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle + 10,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // BREAKFAST
          Padding(
            padding: EdgeInsets.all(padding),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'BREAKFAST ',
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets15/images15/www.jpeg',
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
                title: Text(
                  dinner[index],
                  style: TextStyle(
                    fontSize: fontSizeText,
                    color: isFoodItem(dinner[index]) ? Colors.green.shade600 : Colors.black,
                    fontWeight: isFoodItem(dinner[index]) ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
