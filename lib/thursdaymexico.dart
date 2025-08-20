import 'package:flutter/material.dart';

class ThursdayMexicanPCOSDiet extends StatefulWidget {
  const ThursdayMexicanPCOSDiet({super.key});

  @override
  State<ThursdayMexicanPCOSDiet> createState() => _ThursdayMexicanPCOSDietState();
}

class _ThursdayMexicanPCOSDietState extends State<ThursdayMexicanPCOSDiet> {
  final List<String> breakfast = [
    "Avocado Toast with Whole Wheat Bread (1 slice)",
    "Calories: 200 kcal",
    "Protein: 5g",
    "Carbohydrates: 22g",
    "Fat: 12g",
    "Fibre: 7g",
    "Black Coffee or Herbal Tea (1 cup)",
    "Calories: 0 kcal",
  ];

  final List<String> lunch = [
    "Grilled Shrimp Tacos with Cabbage Slaw (2 tacos)",
    "Calories: 300 kcal",
    "Protein: 25g",
    "Carbohydrates: 20g",
    "Fat: 15g",
    "Fibre: 4g",
    "Side of Black Beans (1/4 cup)",
    "Calories: 90 kcal",
    "Carbohydrates: 15g",
    "Protein: 5g",
    "Fat: 0.5g",
    "Fibre: 4g",
  ];

  final List<String> dinner = [
    "Mexican-style Quinoa Salad (1 bowl)",
    "Calories: 250 kcal",
    "Protein: 10g",
    "Carbohydrates: 35g",
    "Fat: 10g",
    "Fibre: 6g",
    "Grilled Chicken Breast (1 serving)",
    "Calories: 150 kcal",
    "Protein: 25g",
    "Carbohydrates: 0g",
    "Fat: 4g",
    "Fibre: 0g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // Responsive sizing
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
                  'assets7/images7/h.jpeg',
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
                  'assets7/images7/chips.jpeg',
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
                  'assets7/images7/ttp.jpeg',
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
