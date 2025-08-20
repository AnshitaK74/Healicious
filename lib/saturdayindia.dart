import 'package:flutter/material.dart';

class saturdaygutindian extends StatefulWidget {
  const saturdaygutindian({super.key});

  @override
  State<saturdaygutindian> createState() => _saturdaygutindianState();
}

class _saturdaygutindianState extends State<saturdaygutindian> {
  final List<String> breakfast = [
    "1 bowl of besan chilla with vegetables (no cheese)",
    "Calories: 200 kcal",
    "Protein: 7 g",
    "Carbohydrates: 22 g",
    "Fibre: 3 g",
    "Fats: 8 g",

    "1 glass lukewarm water with soaked fenugreek seeds",
    "Calories: 10 kcal",
    "Protein: 1 g",
    "Carbohydrates: 2 g",
    "Fats: 0 g",
    "Fiber: 0.5 g",
  ];

  final List<String> lunch = [
    "1 bowl of lauki (bottle gourd) curry",
    "Calories: 90 kcal",
    "Protein: 2 g",
    "Carbs: 10 g",
    "Fats: 4 g",
    "Fiber: 2 g",

    "1 phulka (without oil)",
    "Calories: 90 kcal",
    "Protein: 3 g",
    "Carbs: 18 g",
    "Fats: 1 g",
    "Fiber: 2 g",

    "1 small bowl of cucumber raita",
    "Calories: 50 kcal",
    "Protein: 3 g",
    "Carbs: 4 g",
    "Fats: 2 g",
    "Fiber: 0.5 g",
  ];

  final List<String> dinner = [
    "1 bowl of vegetable dalia khichdi (carrot, peas, beans)",
    "Calories: 180 kcal",
    "Protein: 6 g",
    "Carbs: 28 g",
    "Fat: 4 g",
    "Fiber: 4 g",

    "1 small bowl sautéed cabbage with jeera",
    "Calories: 70 kcal",
    "Protein: 2 g",
    "Carbs: 7 g",
    "Fat: 3 g",
    "Fiber: 3 g",

    "1 cup of tulsi or peppermint tea",
    "Calories: 2 kcal",
    "Protein: 0 g",
    "Carbs: 0.5 g",
    "Fat: 0 g",
    "Fiber: 0 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery variables for responsiveness (same as Thursday)
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text('Saturday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeTitle + 10,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('BREAKFAST',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/op.jpeg',
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
                }),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/pp.jpeg',
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
                }),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/alla.jpeg',
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
                            : FontWeight.normal,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
