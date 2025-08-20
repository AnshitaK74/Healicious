import 'package:flutter/material.dart';

class thursdayMexicanGutDiet extends StatefulWidget {
  const thursdayMexicanGutDiet({super.key});

  @override
  State<thursdayMexicanGutDiet> createState() => _thursdayMexicanGutDietState();
}

class _thursdayMexicanGutDietState extends State<thursdayMexicanGutDiet> {
  final List<String> breakfast = [
    "Scrambled Egg Whites with Spinach and Tomatoes (1 serving)\n",
    "Calories: 120–140 kcal\n",
    "Protein: 14–16g\n",
    "Carbohydrates: 3–4g\n",
    "Fat: 5–6g\n",
    "Fibre: 2g",

    "Black Beans (1/4 cup)\n",
    "Calories: 60 kcal\n",
    "Protein: 4g\n",
    "Fibre: 3.5g",
  ];

  final List<String> lunch = [
    "Chicken Fajita Bowl (Grilled Chicken, Peppers, Onions, Avocado)\n",
    "Calories: 350–400 kcal\n",
    "Protein: 28–32g\n",
    "Carbohydrates: 20–25g\n",
    "Fat: 18–20g\n",
    "Fibre: 6–7g",

    "Lentil Soup (1 small bowl)\n",
    "Calories: 150 kcal\n",
    "Protein: 9g\n",
    "Carbohydrates: 20g\n",
    "Fibre: 4g"
  ];

  final List<String> dinner = [
    "Grilled Shrimp with Lime and Cilantro (1 serving)\n",
    "Calories: 200–220 kcal\n",
    "Protein: 25–28g\n",
    "Carbohydrates: 3–4g\n",
    "Fat: 10g\n",
    "Fibre: 0g",

    "Steamed Broccoli and Carrots (1/2 cup)\n",
    "Calories: 35 kcal\n",
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
          'Thursday',
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
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets9/images9/j.jpg',
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
