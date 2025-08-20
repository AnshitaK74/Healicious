import 'package:flutter/material.dart';

class FridayPCOSThaiaaa extends StatefulWidget {
  const FridayPCOSThaiaaa({super.key});

  @override
  State<FridayPCOSThaiaaa> createState() => _FridayPCOSThaiaaaState();
}

class _FridayPCOSThaiaaaState extends State<FridayPCOSThaiaaa> {
  final List<String> breakfast = [
    "Steamed Thai rice cakes with mung beans (Khanom Tuay)",
    "Calories: 160 kcal",
    "Carbohydrates: 28 g",
    "Protein: 4 g",
    "Fats: 4 g",
    "Fibre: 2 g",
    "1 cup lemongrass tea (unsweetened)",
    "Calories: 2 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g",
    "1 orange (medium)",
    "Calories: 60 kcal",
    "Carbohydrates: 15 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 3 g"
  ];

  final List<String> lunch = [
    "Thai vegetable stir-fry with tofu and basil",
    "Calories: 280 kcal",
    "Carbohydrates: 12 g",
    "Protein: 18 g",
    "Fats: 18 g",
    "Fibre: 5 g",
    "1 small bowl brown jasmine rice",
    "Calories: 160 kcal",
    "Carbohydrates: 32 g",
    "Protein: 3 g",
    "Fats: 1 g",
    "Fibre: 2 g",
    "1 bowl green papaya salad (Som Tam)",
    "Calories: 80 kcal",
    "Carbohydrates: 10 g",
    "Protein: 2 g",
    "Fats: 4 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "Clear Thai ginger soup with mushrooms and tofu",
    "Calories: 100 kcal",
    "Carbohydrates: 6 g",
    "Protein: 8 g",
    "Fats: 4 g",
    "Fibre: 2 g",
    "Grilled zucchini and eggplant with Thai herbs",
    "Calories: 120 kcal",
    "Carbohydrates: 10 g",
    "Protein: 3 g",
    "Fats: 8 g",
    "Fibre: 3 g",
    "1 glass aloe vera juice (unsweetened)",
    "Calories: 30 kcal",
    "Carbohydrates: 7 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 1 g"
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
          'Friday',
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
                  'assets16/images16/tofu.jpeg',
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
