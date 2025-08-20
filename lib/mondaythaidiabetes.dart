import 'package:flutter/material.dart';

class mondaydthai extends StatefulWidget {
  const mondaydthai({super.key});

  @override
  State<mondaydthai> createState() => _mondaydthaiState();
}

class _mondaydthaiState extends State<mondaydthai> {
  final List<String> breakfast = [
    "1 bowl Thai vegetable congee with tofu",
    "Calories: 230 kcal",
    "Carbohydrates: 35 g",
    "Protein: 8 g",
    "Fats: 6 g",
    "Fibre: 3 g",
    "1 boiled egg",
    "Calories: 70 kcal",
    "Carbohydrates: 1 g",
    "Protein: 6 g",
    "Fats: 5 g",
    "Fibre: 0 g",
    "1 cup unsweetened green tea",
    "Calories: 2 kcal",
    "Carbohydrates: 0.5 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 bowl of steamed Thai chicken with herbs",
    "Calories: 300 kcal",
    "Carbohydrates: 5 g",
    "Protein: 35 g",
    "Fats: 15 g",
    "Fibre: 2 g",
    "1 medium serving of red rice",
    "Calories: 180 kcal",
    "Carbohydrates: 38 g",
    "Protein: 4 g",
    "Fats: 2 g",
    "Fibre: 3 g",
    "1 small bowl raw papaya salad",
    "Calories: 100 kcal",
    "Carbohydrates: 12 g",
    "Protein: 3 g",
    "Fats: 4 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "1 bowl of Thai stir-fried tofu with mixed vegetables",
    "Calories: 240 kcal",
    "Carbohydrates: 15 g",
    "Protein: 20 g",
    "Fats: 10 g",
    "Fibre: 4 g",
    "1 small portion of steamed brown jasmine rice",
    "Calories: 100 kcal",
    "Carbohydrates: 22 g",
    "Protein: 2 g",
    "Fats: 1 g",
    "Fibre: 2 g"
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
            // BREAKFAST
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
                  'assets20/images20/i.jpeg',
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
              },
            ),

            // LUNCH
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
                  'assets20/images20/g.jpeg',
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
              },
            ),

            // DINNER
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
                  'assets11/images11/c.jpeg',
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
                          ? Colors.green.shade600
                          : Colors.black,
                      fontWeight: isFoodItem(dinner[index])
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
