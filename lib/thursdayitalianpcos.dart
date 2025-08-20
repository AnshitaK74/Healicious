import 'package:flutter/material.dart';

class ThursdayPCOSItalianDishes extends StatefulWidget {
  const ThursdayPCOSItalianDishes({super.key});

  @override
  State<ThursdayPCOSItalianDishes> createState() => _ThursdayPCOSItalianDishesState();
}

class _ThursdayPCOSItalianDishesState extends State<ThursdayPCOSItalianDishes> {

  final List<String> breakfast = [
    "Scrambled Eggs with Cherry Tomatoes and Basil",
    "Calories: 240 kcal",
    "Protein: 20g",
    "Carbohydrates: 5g",
    "Fats: 16g",
    "Fibre: 2g",

    "Black Coffee (no sugar)",
    "Calories: 2 kcal"
  ];

  final List<String> lunch = [
    "Grilled Salmon with Sauteed Zucchini and Olive Oil",
    "Calories: 360 kcal",
    "Protein: 33g",
    "Carbohydrates: 6g",
    "Fats: 22g",
    "Fibre: 2g",

    "1 Cup Tomato Basil Soup",
    "Calories: 90 kcal",
    "Protein: 4g",
    "Carbohydrates: 10g",
    "Fats: 4g",
    "Fibre: 2g"
  ];

  final List<String> dinner = [
    "Eggplant Parmesan (baked, not fried)",
    "Calories: 310 kcal",
    "Protein: 22g",
    "Carbohydrates: 14g",
    "Fats: 18g",
    "Fibre: 5g",

    "Arugula Salad with Lemon Dressing",
    "Calories: 40 kcal",
    "Protein: 2g",
    "Carbohydrates: 3g",
    "Fats: 3g",
    "Fibre: 1g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness (same as Chinese version)
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
                'assets10/images10/x.jpeg',
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
                'assets10/images10/y.jpg',
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
                'assets10/images10/z.webp',
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
