import 'package:flutter/material.dart';

class wednesdayMexicanGutDiet extends StatefulWidget {
  const wednesdayMexicanGutDiet({super.key});

  @override
  State<wednesdayMexicanGutDiet> createState() => _wednesdayMexicanGutDietState();
}

class _wednesdayMexicanGutDietState extends State<wednesdayMexicanGutDiet> {
  final List<String> breakfast = [
    "Avocado Toast with Poached Egg (1 slice whole-grain bread)\n",
    "Calories: 180–200 kcal\n",
    "Protein: 10g\n",
    "Carbohydrates: 18g\n",
    "Fat: 10g\n",
    "Fibre: 5g",

    "Papaya Slices (1/2 cup)\n",
    "Calories: 55 kcal\n",
    "Fibre: 2g\n",
    "Protein: 0.5g",
  ];

  final List<String> lunch = [
    "Turkey Lettuce Wraps (3 wraps)\n",
    "Calories: 320–350 kcal\n",
    "Protein: 28–30g\n",
    "Carbohydrates: 10–12g\n",
    "Fat: 15g\n",
    "Fibre: 5g",

    "Cucumber and Tomato Salad (1/2 cup)\n",
    "Calories: 40 kcal\n",
    "Fibre: 2g",
  ];

  final List<String> dinner = [
    "Grilled Cod with Lemon and Herbs (1 fillet)\n",
    "Calories: 220–250 kcal\n",
    "Protein: 25g\n",
    "Carbohydrates: 0g\n",
    "Fat: 12g\n",
    "Fibre: 0g",

    "Steamed Asparagus (1/2 cup)\n",
    "Calories: 30 kcal\n",
    "Fibre: 3g\n",
    "Protein: 2g",
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
          'Wednesday',
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
                'assets9/images9/e.jpeg',
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
                'assets9/images9/f.jpeg',
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
                'assets9/images9/g.webp',
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
