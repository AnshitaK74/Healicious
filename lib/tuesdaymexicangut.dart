import 'package:flutter/material.dart';

class tuesdayMexicanGutDiet extends StatefulWidget {
  const tuesdayMexicanGutDiet({super.key});

  @override
  State<tuesdayMexicanGutDiet> createState() => _tuesdayMexicanGutDietState();
}

class _tuesdayMexicanGutDietState extends State<tuesdayMexicanGutDiet> {
  final List<String> breakfast = [
    "Scrambled Egg Whites with Spinach (1 serving)\n",
    "Calories: 120–140 kcal\n",
    "Protein: 18–20g\n",
    "Carbohydrates: 2–3g\n",
    "Fat: 3–4g\n",
    "Fibre: 1–2g",

    "Black Beans (1/4 cup)\n",
    "Calories: 60 kcal\n",
    "Protein: 4g\n",
    "Fibre: 3g",
  ];

  final List<String> lunch = [
    "Chicken Fajita Bowl with Brown Rice (1 bowl)\n",
    "Calories: 350–400 kcal\n",
    "Protein: 30–35g\n",
    "Carbohydrates: 25–30g\n",
    "Fat: 12–15g\n",
    "Fibre: 5g",

    "Grilled Bell Peppers and Onions (1/2 cup)\n",
    "Calories: 40 kcal\n",
    "Fibre: 2g",
  ];

  final List<String> dinner = [
    "Grilled Tilapia with Lime (1 fillet)\n",
    "Calories: 200–220 kcal\n",
    "Protein: 22–25g\n",
    "Carbohydrates: 0g\n",
    "Fat: 10g\n",
    "Fibre: 0g",

    "Sautéed Green Beans with Garlic (1/2 cup)\n",
    "Calories: 50 kcal\n",
    "Fibre: 3g",
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
          'Tuesday',
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
                'assets9/images9/b.jpeg',
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
                      )),
                );
              }),
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets9/images9/c.jpg',
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
                      )),
                );
              }),
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets9/images9/i.jpeg',
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
                      )),
                );
              }),
        ]),
      ),
    );
  }
}
