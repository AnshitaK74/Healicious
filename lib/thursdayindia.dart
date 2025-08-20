import 'package:flutter/material.dart';

class thursdaygutindian extends StatefulWidget {
  const thursdaygutindian({super.key});

  @override
  State<thursdaygutindian> createState() => _thursdaygutindianState();
}

class _thursdaygutindianState extends State<thursdaygutindian> {
  final List<String> breakfast = [
    "1 bowl of poha with vegetables (peas, carrots, onion)",
    "Calories: 210 kcal",
    "Protein: 5 g",
    "Carbohydrates: 35 g",
    "Fibre: 3 g",
    "Fats: 6 g",

    "1 cup of jeera-ajwain herbal water",
    "Calories: 5 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl of bhindi sabzi (okra, minimal oil)",
    "Calories: 120 kcal",
    "Protein: 3 g",
    "Carbs: 10 g",
    "Fats: 7 g",
    "Fiber: 4 g",

    "1 phulka (without ghee)",
    "Calories: 90 kcal",
    "Protein: 3 g",
    "Carbs: 18 g",
    "Fats: 1.5 g",
    "Fiber: 2 g",

    "½ cup curd with pinch of roasted jeera",
    "Calories: 40 kcal",
    "Protein: 2 g",
    "Carbs: 3 g",
    "Fats: 2.5 g",
    "Fiber: 0 g",
  ];

  final List<String> dinner = [
    "1 bowl of vegetable clear soup (carrot, beans, cabbage)",
    "Calories: 60 kcal",
    "Protein: 2 g",
    "Carbs: 8 g",
    "Fat: 2 g",
    "Fiber: 2 g",

    "1 small bowl of steamed moong dal cheela pieces",
    "Calories: 140 kcal",
    "Protein: 8 g",
    "Carbs: 15 g",
    "Fat: 4 g",
    "Fiber: 3 g",

    "1 cup of chamomile tea",
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
    // MediaQuery variables for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text('Thursday',
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
                  'assets2/images2/poha.jpeg',
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
                  'assets2/images2/ji.jpeg',
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
                  'assets2/images2/sabu.jpeg',
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
