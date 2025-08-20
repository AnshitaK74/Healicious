import 'package:flutter/material.dart';

class saturdaychinagut extends StatefulWidget {
  const saturdaychinagut({super.key});

  @override
  State<saturdaychinagut> createState() => _saturdaychinagutState();
}

class _saturdaychinagutState extends State<saturdaychinagut> {
  final List<String> breakfast = [
    "1 bowl of Chinese rice porridge with ginger",
    "Calories: 110 kcal",
    "Protein: 2 g",
    "Carbohydrates: 22 g",
    "Fibre: 1 g",
    "Fats: 1 g",

    "1 small steamed bun (baozi) with vegetables",
    "Calories: 80 kcal",
    "Protein: 3 g",
    "Carbohydrates: 14 g",
    "Fats: 2 g",
    "Fiber: 2 g",
  ];

  final List<String> lunch = [
    "1 plate of stir-fried bok choy with garlic",
    "Calories: 90 kcal",
    "Protein: 3 g",
    "Carbs: 6 g",
    "Fats: 5 g",
    "Fiber: 3 g",

    "1 small bowl of steamed fish (such as tilapia) with ginger and scallions",
    "Calories: 150 kcal",
    "Protein: 22 g",
    "Carbs: 5 g",
    "Fats: 7 g",
    "Fiber: 0 g",

    "½ small bowl of steamed brown rice",
    "Calories: 110 kcal",
    "Protein: 2.5 g",
    "Carbs: 23 g",
    "Fats: 1 g",
    "Fiber: 1.8 g",
  ];

  final List<String> dinner = [
    "1 small plate of steamed chicken with Chinese mushrooms",
    "Calories: 180 kcal",
    "Protein: 25 g",
    "Carbs: 5 g",
    "Fats: 8 g",
    "Fiber: 1 g",

    "1 bowl of vegetable soup with tofu and bok choy",
    "Calories: 60 kcal",
    "Protein: 4 g",
    "Carbs: 8 g",
    "Fats: 2 g",
    "Fiber: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness (same as diabetes version)
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
          'Saturday',
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets15/images15/3.jpeg',
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets15/images15/4.jpeg',
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets15/images15/aq.jpeg',
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
        ]),
      ),
    );
  }
}
