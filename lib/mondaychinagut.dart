import 'package:flutter/material.dart';

class MondayChineseGutDiet extends StatefulWidget {
  const MondayChineseGutDiet({super.key});

  @override
  State<MondayChineseGutDiet> createState() => _MondayChineseGutDietState();
}

class _MondayChineseGutDietState extends State<MondayChineseGutDiet> {
  final List<String> breakfast = [
    "1 bowl of miso soup\n",
    "Calories: 50 kcal\n",
    "Protein: 4 g\n",
    "Carbohydrates: 5 g\n",
    "Fibre: 1 g\n",
    "Fats: 1.5 g",

    "1 boiled egg\n",
    "Calories: 70 kcal\n",
    "Protein: 6 g\n",
    "Carbohydrates: 0.6 g\n",
    "Fibre: 0 g\n",
    "Fats: 5 g",
  ];

  final List<String> lunch = [
    "1 plate of grilled salmon\n",
    "Calories: 230 kcal\n",
    "Protein: 25 g\n",
    "Carbohydrates: 0 g\n",
    "Fats: 15 g\n",
    "Fibre: 0 g",

    "1 bowl of steamed vegetables (bok choy, broccoli, carrots)\n",
    "Calories: 50 kcal\n",
    "Protein: 3 g\n",
    "Carbohydrates: 8 g\n",
    "Fats: 0.5 g\n",
    "Fibre: 3 g",

    "½ bowl of brown rice\n",
    "Calories: 110 kcal\n",
    "Protein: 2.5 g\n",
    "Carbohydrates: 23 g\n",
    "Fats: 1 g\n",
    "Fibre: 1.8 g",
  ];

  final List<String> dinner = [
    "½ plate of grilled chicken breast\n",
    "Calories: 165 kcal\n",
    "Protein: 31 g\n",
    "Carbohydrates: 0 g\n",
    "Fats: 3.6 g\n",
    "Fibre: 0 g",

    "1 bowl of shirataki noodles\n",
    "Calories: 10 kcal\n",
    "Carbohydrates: 2 g\n",
    "Fats: 0 g\n",
    "Fibre: 2 g",

    "½ bowl of stir-fried vegetables\n",
    "Calories: 50 kcal\n",
    "Protein: 2 g\n",
    "Carbohydrates: 6 g\n",
    "Fats: 2 g\n",
    "Fibre: 2 g",
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
          'Monday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle + 10,
            color: Colors.green.shade800,
          ),
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
                'assets5/images5/miso.jpg',
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
                'assets5/images5/shemai.jpeg',
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
                'assets5/images5/regular.jpeg',
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
