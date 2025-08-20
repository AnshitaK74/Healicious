import 'package:flutter/material.dart';

class WednesdayPCOSThaieee extends StatefulWidget {
  const WednesdayPCOSThaieee({super.key});

  @override
  State<WednesdayPCOSThaieee> createState() => _WednesdayPCOSThaieeeState();
}

class _WednesdayPCOSThaieeeState extends State<WednesdayPCOSThaieee> {
  final List<String> breakfast = [
    "Thai-style mung bean pancakes (steamed, no sugar)",
    "Calories: 210 kcal",
    "Carbohydrates: 22 g",
    "Protein: 9 g",
    "Fats: 9 g",
    "Fibre: 4 g",
    "1 glass coconut water with mint",
    "Calories: 45 kcal",
    "Carbohydrates: 10 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 1 g"
  ];

  final List<String> lunch = [
    "Thai raw papaya salad (som tam, no sugar, extra peanuts)",
    "Calories: 160 kcal",
    "Carbohydrates: 14 g",
    "Protein: 6 g",
    "Fats: 9 g",
    "Fibre: 4 g",
    "1 bowl brown rice with steamed bok choy & tofu",
    "Calories: 290 kcal",
    "Carbohydrates: 32 g",
    "Protein: 12 g",
    "Fats: 10 g",
    "Fibre: 5 g"
  ];

  final List<String> dinner = [
    "Clear mushroom soup with Thai herbs (lemongrass, galangal, lime)",
    "Calories: 70 kcal",
    "Carbohydrates: 6 g",
    "Protein: 3 g",
    "Fats: 2 g",
    "Fibre: 2 g",
    "Thai rice noodle lettuce wraps with veggies and peanut sauce",
    "Calories: 340 kcal",
    "Carbohydrates: 36 g",
    "Protein: 10 g",
    "Fats: 14 g",
    "Fibre: 6 g"
  ];

  bool isFoodItem(String text) {
    return !(text.toLowerCase().contains("calories") ||
        text.toLowerCase().contains("carbohydrates") ||
        text.toLowerCase().contains("protein") ||
        text.toLowerCase().contains("fats") ||
        text.toLowerCase().contains("fibre"));
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
          'Wednesday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle + 10,
            color: Colors.green.shade800,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green.shade800),
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
                  'assets20/images20/b.jpeg',
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
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('LUNCH',
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
                  'assets20/images20/h.jpeg',
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
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('DINNER',
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
                  'assets20/images20/h.jpeg',
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
