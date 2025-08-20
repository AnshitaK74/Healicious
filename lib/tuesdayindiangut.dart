import 'package:flutter/material.dart';

class tuesdaygutindian extends StatefulWidget {
  const tuesdaygutindian({super.key});

  @override
  State<tuesdaygutindian> createState() => _tuesdaygutindianState();
}

class _tuesdaygutindianState extends State<tuesdaygutindian> {
  final List<String> breakfast = [
    "1 bowl of vegetable upma (with carrots, peas, beans)",
    "Calories: 200 kcal",
    "Protein: 5 g",
    "Carbohydrates: 30 g",
    "Fibre: 3 g",
    "Fats: 6 g",

    "1 glass of buttermilk with roasted cumin",
    "Calories: 35 kcal",
    "Protein: 2 g",
    "Carbohydrates: 4 g",
    "Fats: 1 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 katori of rajma curry (light oil, home-style)",
    "Calories: 180 kcal",
    "Protein: 9 g",
    "Carbs: 25 g",
    "Fats: 5 g",
    "Fiber: 6 g",

    "½ bowl of red rice or brown rice",
    "Calories: 110 kcal",
    "Protein: 2.5 g",
    "Carbs: 23 g",
    "Fats: 1 g",
    "Fiber: 1.5 g",

    "1 small plate cucumber-onion-tomato salad",
    "Calories: 40 kcal",
    "Protein: 1 g",
    "Carbs: 6 g",
    "Fats: 2 g",
    "Fiber: 2 g",
  ];

  final List<String> dinner = [
    "1 bowl of bottle gourd soup (lauki) with mild spices",
    "Calories: 70 kcal",
    "Protein: 2 g",
    "Carbs: 10 g",
    "Fat: 3 g",
    "Fiber: 3 g",

    "1 medium millet roti (jowar/bajra)",
    "Calories: 100 kcal",
    "Carbs: 22 g",
    "Fat: 2 g",
    "Fiber: 2.5 g",

    "½ bowl of sautéed spinach with garlic",
    "Calories: 60 kcal",
    "Protein: 2 g",
    "Carbs: 5 g",
    "Fat: 3 g",
    "Fiber: 2.5 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery variables for responsiveness (same as wednesdaygutindian and saturdaygutindian)
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tuesday',
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
                  'assets2/images2/pakora.jpeg',
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
                  'assets2/images2/kachori.jpg',
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
