import 'package:flutter/material.dart';

class mondaydthaid extends StatefulWidget {
  const mondaydthaid({super.key});

  @override
  State<mondaydthaid> createState() => _mondaydthaidState();
}

class _mondaydthaidState extends State<mondaydthaid> {
  final List<String> breakfast = [
    "1 bowl Thai-style vegetable soup with tofu",
    "Calories: 180 kcal",
    "Carbohydrates: 12 g",
    "Protein: 10 g",
    "Fats: 8 g",
    "Fibre: 3 g",
    "1 small fruit plate (papaya, melon)",
    "Calories: 70 kcal",
    "Carbohydrates: 18 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 2 g",
    "1 cup unsweetened lemon grass tea",
    "Calories: 2 kcal",
    "Carbohydrates: 0.5 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl steamed Thai fish with herbs",
    "Calories: 200 kcal",
    "Carbohydrates: 2 g",
    "Protein: 30 g",
    "Fats: 8 g",
    "Fibre: 1 g",
    "1 medium bowl black rice",
    "Calories: 160 kcal",
    "Carbohydrates: 34 g",
    "Protein: 4 g",
    "Fats: 1 g",
    "Fibre: 3 g",
    "1 bowl Thai cucumber salad (no sugar)",
    "Calories: 60 kcal",
    "Carbohydrates: 7 g",
    "Protein: 2 g",
    "Fats: 2 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "1 bowl Thai basil tofu stir-fry (less oil)",
    "Calories: 220 kcal",
    "Carbohydrates: 10 g",
    "Protein: 18 g",
    "Fats: 10 g",
    "Fibre: 4 g",
    "1 small bowl steamed red rice",
    "Calories: 110 kcal",
    "Carbohydrates: 23 g",
    "Protein: 2 g",
    "Fats: 1 g",
    "Fibre: 2 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // ✅ MediaQuery for responsive sizing
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
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                                : FontWeight.normal),
                      ),
                    );
                  }),

              // LUNCH
              Align(
                alignment: Alignment.centerLeft,
                child: Transform.translate(
                  offset: Offset(padding, 0),
                  child: Text(
                    'LUNCH',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800),
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
                    'assets20/images20/g.jpeg',
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
                                : FontWeight.normal),
                      ),
                    );
                  }),

              // DINNER
              Align(
                alignment: Alignment.centerLeft,
                child: Transform.translate(
                  offset: Offset(padding, 0),
                  child: Text(
                    'DINNER',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800),
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
                    'assets11/images11/c.jpeg',
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
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(dinner[index])
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    );
                  }),
            ])));
  }
}
