import 'package:flutter/material.dart';

class SaturdayPCOSItalianDishes extends StatefulWidget {
  const SaturdayPCOSItalianDishes({super.key});

  @override
  State<SaturdayPCOSItalianDishes> createState() => _SaturdayPCOSItalianDishesState();
}

class _SaturdayPCOSItalianDishesState extends State<SaturdayPCOSItalianDishes> {

  final List<String> breakfast = [
    "Omelette with Spinach and Parmesan",
    "Calories: 230 kcal",
    "Protein: 22g",
    "Carbohydrates: 4g",
    "Fats: 14g",
    "Fibre: 2g",

    "Espresso (no sugar)",
    "Calories: 3 kcal"
  ];

  final List<String> lunch = [
    "Turkey Meatballs in Marinara Sauce",
    "Calories: 300 kcal",
    "Protein: 30g",
    "Carbohydrates: 10g",
    "Fats: 15g",
    "Fibre: 3g",

    "Grilled Bell Peppers",
    "Calories: 40 kcal",
    "Protein: 1g",
    "Carbohydrates: 6g",
    "Fats: 1g",
    "Fibre: 2g"
  ];

  final List<String> dinner = [
    "Stuffed Mushrooms with Ricotta and Herbs",
    "Calories: 270 kcal",
    "Protein: 20g",
    "Carbohydrates: 8g",
    "Fats: 18g",
    "Fibre: 3g",

    "Steamed Green Beans",
    "Calories: 35 kcal",
    "Protein: 2g",
    "Carbohydrates: 5g",
    "Fats: 0g",
    "Fibre: 2g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness (exactly like Chinese version)
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
                'assets11/images11/d.jpg',
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
                'assets11/images11/e.jpeg',
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
                'assets13/images13/img.jpeg',
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
