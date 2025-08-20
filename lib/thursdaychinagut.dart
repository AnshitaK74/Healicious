import 'package:flutter/material.dart';

class ThursdayChinaGut extends StatefulWidget {
  const ThursdayChinaGut({super.key});

  @override
  State<ThursdayChinaGut> createState() => _ThursdayChinaGutState();
}

class _ThursdayChinaGutState extends State<ThursdayChinaGut> {
  final List<String> breakfast = [
    "1 bowl of warm barley porridge",
    "Calories: 150 kcal",
    "Protein: 3 g",
    "Carbohydrates: 32 g",
    "Fibre: 4 g",
    "Fats: 1 g",
    "Steamed Chinese yam slices",
    "Calories: 80 kcal",
    "Protein: 1.5 g",
    "Carbohydrates: 18 g",
    "Fibre: 2 g",
    "Fats: 0.5 g",
  ];

  final List<String> lunch = [
    "Steamed fish with ginger and garlic",
    "Calories: 180 kcal",
    "Protein: 25 g",
    "Carbs: 1 g",
    "Fats: 8 g",
    "Fiber: 0 g",
    "1 bowl winter melon soup",
    "Calories: 60 kcal",
    "Protein: 2 g",
    "Carbs: 8 g",
    "Fats: 1 g",
    "Fiber: 2 g",
    "½ small bowl of brown rice",
    "Calories: 110 kcal",
    "Protein: 2.5 g",
    "Carbs: 23 g",
    "Fats: 1 g",
    "Fiber: 1.8 g",
  ];

  final List<String> dinner = [
    "Stir-fried Chinese cabbage with sesame oil",
    "Calories: 80 kcal",
    "Protein: 2 g",
    "Carbs: 5 g",
    "Fat: 5 g",
    "Fiber: 2 g",
    "1 bowl millet congee",
    "Calories: 120 kcal",
    "Protein: 3 g",
    "Carbs: 24 g",
    "Fat: 1 g",
    "Fiber: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.45;
    final imageHeight = screenHeight * 0.25;
    final fontSizeTitle = screenWidth * 0.07; // AppBar title
    final fontSizeText = screenWidth * 0.05; // Section headings & list text

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thursday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'BREAKFAST',
                style: TextStyle(
                    fontSize: fontSizeText,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800),
              ),
            ),
          ),
          Column(children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/y.jpeg',
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
                    ));
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                  offset: Offset(16, 0),
                  child: Text(
                    'LUNCH',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeText),
                  )),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
                    ));
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                  offset: Offset(16, 0),
                  child: Text(
                    'DINNER',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeText),
                  )),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/n.jpeg',
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
                    ));
              },
            )
          ])
        ]),
      ),
    );
  }
}
