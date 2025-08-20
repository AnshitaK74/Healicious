import 'package:flutter/material.dart';

class mondaydiabetesjapan extends StatefulWidget {
  const mondaydiabetesjapan({super.key});

  @override
  State<mondaydiabetesjapan> createState() => _mondaydiabetesjapanState();
}

class _mondaydiabetesjapanState extends State<mondaydiabetesjapan> {
  final List<String> breakfast = [
    "1 bowl of miso soup",
    "Calories: 50 kcal",
    "Protein: 4 g",
    "Carbohydrates: 5 g",
    "Fibre: 1 g",
    "Fats: 1.5 g",
    "1 Boiled Egg",
    "Calories: 70 kcal",
    "Protein: 6 g",
    "Carbohydrates: 0.6 g",
    "Fats: 5 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 plate of Grilled Salmon",
    "Calories: 230 kcal",
    "Protein: 25 g",
    "Carbs: 0 g",
    "Fats: 15 g",
    "Fiber: 0 g",
    "1 bowl of Steamed Vegetables(Broccoli, bok choy, carrots)",
    "Calories: 50 kcal",
    "Protein: 3 g",
    "Carbs: 8 g",
    "Fats: 0.5 g",
    "Fiber: 3 g",
    "½ small bowl of brown rice",
    "Calories: 110 kcal",
    "Protein: 2.5 g",
    "Carbs: 23 g",
    "Fats: 1 g",
    "Fiber: 1.8 g",
  ];

  final List<String> dinner = [
    "½ dinner plate of Grilled Chicken Breast",
    "Calories: 165 kcal",
    "Protein: 31 g",
    "Carbs: 0 g",
    "Fat: 3.6 g",
    "Fiber: 0 g",
    "1 bowl of Shirataki Noodles",
    "Calories: 10 kcal",
    "Carbs: 2 g",
    "Fat: 0 g",
    "Fiber: 2 g",
    "½ bowl of Stir-Fried Veggies",
    "Calories: 50 kcal",
    "Protein: 2 g",
    "Carbs: 6 g",
    "Fat: 2 g",
    "Fiber: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
                child: Text(
                  'DINNER',
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
