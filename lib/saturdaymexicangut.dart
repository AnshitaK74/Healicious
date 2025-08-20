import 'package:flutter/material.dart';

class saturdayMexicanGutDiet extends StatefulWidget {
  const saturdayMexicanGutDiet({super.key});

  @override
  State<saturdayMexicanGutDiet> createState() => _saturdayMexicanGutDietState();
}

class _saturdayMexicanGutDietState extends State<saturdayMexicanGutDiet> {
  final List<String> breakfast = [
    "Egg and Black Bean Breakfast Burrito (1 wrap)\n",
    "Calories: 280–320 kcal\n",
    "Protein: 18–20g\n",
    "Carbohydrates: 25–30g\n",
    "Fat: 12–14g\n",
    "Fibre: 6–7g",

    "Guava Slices (1/2 cup)\n",
    "Calories: 50 kcal\n",
    "Fibre: 2.5g",
  ];

  final List<String> lunch = [
    "Grilled Chicken Ensalada (1 serving)\n",
    "Calories: 300–350 kcal\n",
    "Protein: 25–30g\n",
    "Carbohydrates: 20–25g\n",
    "Fat: 12–14g\n",
    "Fibre: 5–6g",

    "Quinoa (1/2 cup cooked)\n",
    "Calories: 110 kcal\n",
    "Protein: 4g\n",
    "Carbohydrates: 20g\n",
    "Fibre: 2.5g\n",
    "Fat: 2g",
  ];

  final List<String> dinner = [
    "Beef Picadillo Lettuce Wraps (2 wraps)\n",
    "Calories: 220–260 kcal\n",
    "Protein: 20–24g\n",
    "Carbohydrates: 10–15g\n",
    "Fat: 10–12g\n",
    "Fibre: 2g",

    "Steamed Asparagus with Lime (1/2 cup)\n",
    "Calories: 30 kcal\n",
    "Fibre: 2g",
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
          'Saturday',
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
                child: Text('BREAKFAST (280–320 kcal)',
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
                  'assets9/images9/img.png',
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
                  'assets9/images9/o.jpg',
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
                  'assets9/images9/n.jpg',
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
