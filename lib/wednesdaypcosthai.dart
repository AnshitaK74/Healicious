import 'package:flutter/material.dart';

class WednesdayPCOSThai extends StatefulWidget {
  const WednesdayPCOSThai({super.key});

  @override
  State<WednesdayPCOSThai> createState() => _WednesdayPCOSThaiState();
}

class _WednesdayPCOSThaiState extends State<WednesdayPCOSThai> {
  final List<String> breakfast = [
    "1 bowl of Thai coconut yogurt parfait with granola and berries",
    "Calories: 280 kcal",
    "Carbohydrates: 40 g",
    "Protein: 6 g",
    "Fats: 12 g",
    "Fibre: 5 g",
    "1 cup fresh orange juice",
    "Calories: 110 kcal",
    "Carbohydrates: 26 g",
    "Protein: 2 g",
    "Fats: 0 g",
    "Fibre: 0 g",
    "1/2 small watermelon",
    "Calories: 40 kcal",
    "Carbohydrates: 10 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 1 g"
  ];

  final List<String> lunch = [
    "1 bowl of Thai green curry with chicken (light coconut milk)",
    "Calories: 380 kcal",
    "Carbohydrates: 25 g",
    "Protein: 35 g",
    "Fats: 20 g",
    "Fibre: 6 g",
    "1 small serving of steamed jasmine rice",
    "Calories: 130 kcal",
    "Carbohydrates: 28 g",
    "Protein: 2 g",
    "Fats: 0 g",
    "Fibre: 1 g",
    "1 cup Thai green papaya salad",
    "Calories: 120 kcal",
    "Carbohydrates: 12 g",
    "Protein: 3 g",
    "Fats: 7 g",
    "Fibre: 5 g"
  ];

  final List<String> dinner = [
    "1 bowl of Thai fish curry with steamed vegetables",
    "Calories: 350 kcal",
    "Carbohydrates: 20 g",
    "Protein: 30 g",
    "Fats: 15 g",
    "Fibre: 7 g",
    "1 small serving of sautéed kale with sesame oil",
    "Calories: 90 kcal",
    "Carbohydrates: 5 g",
    "Protein: 4 g",
    "Fats: 6 g",
    "Fibre: 3 g"
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
          'Wednesday',
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
                return Padding(
                  padding: EdgeInsets.all(2),
                  child: ListTile(
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
