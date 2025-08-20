import 'package:flutter/material.dart';

class TuesdayMexicanObesity extends StatefulWidget {
  const TuesdayMexicanObesity({super.key});

  @override
  State<TuesdayMexicanObesity> createState() => _TuesdayMexicanObesityState();
}

class _TuesdayMexicanObesityState extends State<TuesdayMexicanObesity> {
  final List<String> breakfast = [
    "1 bowl of Chia Seed Pudding with cinnamon and almond milk\n",
    "Calories: 120 kcal\n",
    "Protein: 4 g\n",
    "Carbohydrates: 12 g\n",
    "Fiber: 8 g\n",
    "Fats: 7 g",

    "1 slice of whole grain toast with avocado (¼)\n",
    "Calories: 90 kcal\n",
    "Protein: 2 g\n",
    "Carbohydrates: 10 g\n",
    "Fiber: 2.5 g\n",
    "Fats: 4 g",
  ];

  final List<String> lunch = [
    "Vegetarian Burrito Bowl (beans, lettuce, tomatoes, grilled peppers, no cheese)\n",
    "Calories: 300 kcal\n",
    "Protein: 12 g\n",
    "Carbohydrates: 35 g\n",
    "Fiber: 10 g\n",
    "Fats: 10 g",

    "Side of guacamole (2 tbsp) with carrot sticks\n",
    "Calories: 90 kcal\n",
    "Protein: 1 g\n",
    "Carbohydrates: 5 g\n",
    "Fiber: 3 g\n",
    "Fats: 8 g",
  ];

  final List<String> dinner = [
    "Stuffed Bell Pepper with quinoa, beans, and salsa\n",
    "Calories: 220 kcal\n",
    "Protein: 9 g\n",
    "Carbohydrates: 25 g\n",
    "Fiber: 6 g\n",
    "Fats: 8 g",

    "Grilled zucchini slices with lime and chili\n",
    "Calories: 40 kcal\n",
    "Protein: 1 g\n",
    "Carbohydrates: 4 g\n",
    "Fiber: 1.5 g\n",
    "Fats: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // ✅ Responsive MediaQuery values (same as Saturday/Thursday)
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
          'Tuesday',
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
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                    fontSize: fontSizeTitle,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets7/images7/dorami.jpeg',
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
                    fontSize: fontSizeTitle,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets7/images7/yoga.jpeg',
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
                    fontSize: fontSizeTitle,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets7/images7/white.jpeg',
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
