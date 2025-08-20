import 'package:flutter/material.dart';

class fridayMexicanGutDiet extends StatefulWidget {
  const fridayMexicanGutDiet({super.key});

  @override
  State<fridayMexicanGutDiet> createState() => _fridayMexicanGutDietState();
}

class _fridayMexicanGutDietState extends State<fridayMexicanGutDiet> {
  final List<String> breakfast = [
    "Scrambled Eggs with Spinach and Tomato (2 eggs)\n",
    "Calories: 200–220 kcal\n",
    "Protein: 14–16g\n",
    "Carbohydrates: 5–6g\n",
    "Fat: 14–15g\n",
    "Fibre: 1–2g",

    "Guava (1 small fruit)\n",
    "Calories: 60 kcal\n",
    "Fibre: 3g\n",
    "Protein: 1g",
  ];

  final List<String> lunch = [
    "Chicken Fajita Bowl with Bell Peppers and Onions (1 bowl)\n",
    "Calories: 300–350 kcal\n",
    "Protein: 25–30g\n",
    "Carbohydrates: 20–25g\n",
    "Fat: 12–14g\n",
    "Fibre: 4–5g",

    "Black Bean Salad (1/2 cup)\n",
    "Calories: 100 kcal\n",
    "Protein: 6g\n",
    "Fibre: 5g\n",
    "Fat: 2g",
  ];

  final List<String> dinner = [
    "Baked Tilapia with Herbs (1 serving)\n",
    "Calories: 180–200 kcal\n",
    "Protein: 22–25g\n",
    "Carbohydrates: 0–2g\n",
    "Fat: 8–10g\n",
    "Fibre: 0g",

    "Roasted Brussels Sprouts with Olive Oil (1/2 cup)\n",
    "Calories: 80 kcal\n",
    "Fibre: 3g\n",
    "Protein: 3g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsive sizing
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
        child: Column(
          children: [
            // BREAKFAST
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
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets9/images9/k.jpeg',
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
                          color: isFoodItem(breakfast[index])
                              ? Colors.green.shade700
                              : Colors.black,
                          fontWeight: isFoodItem(breakfast[index])
                              ? FontWeight.bold
                              : FontWeight.normal,
                        )));
              },
            ),
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
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets9/images9/l.jpeg',
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
                          color: isFoodItem(lunch[index])
                              ? Colors.green.shade700
                              : Colors.black,
                          fontWeight: isFoodItem(lunch[index])
                              ? FontWeight.bold
                              : FontWeight.normal,
                        )));
              },
            ),
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
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets9/images9/m.png',
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
                        )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
