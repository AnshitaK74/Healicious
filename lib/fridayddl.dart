import 'package:flutter/material.dart';

class fridayddl extends StatefulWidget {
  const fridayddl({super.key});

  @override
  State<fridayddl> createState() => _fridayddlState();
}

class _fridayddlState extends State<fridayddl> {
  final List<String> breakfast = [
    "1 bowl Thai brown rice porridge with tofu and herbs",
    "Calories: 190 kcal",
    "Carbohydrates: 30 g",
    "Protein: 7 g",
    "Fats: 3 g",
    "Fibre: 2 g",
    "1 cup cucumber slices with lime & chili",
    "Calories: 16 kcal",
    "Carbohydrates: 3 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 1 g",
    "1 cup unsweetened Thai green tea",
    "Calories: 0 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "1 plate Thai basil tofu stir fry (low oil)",
    "Calories: 180 kcal",
    "Carbohydrates: 12 g",
    "Protein: 10 g",
    "Fats: 8 g",
    "Fibre: 3 g",
    "1 medium bowl red rice",
    "Calories: 160 kcal",
    "Carbohydrates: 30 g",
    "Protein: 4 g",
    "Fats: 2 g",
    "Fibre: 2 g",
    "1 cup Thai cucumber salad with vinegar dressing",
    "Calories: 45 kcal",
    "Carbohydrates: 5 g",
    "Protein: 1 g",
    "Fats: 2 g",
    "Fibre: 1 g"
  ];

  final List<String> dinner = [
    "1 bowl clear Thai mushroom soup with lemongrass and kaffir lime",
    "Calories: 70 kcal",
    "Carbohydrates: 10 g",
    "Protein: 3 g",
    "Fats: 2 g",
    "Fibre: 2 g",
    "1 cup stir-fried mixed vegetables (baby corn, carrots, beans)",
    "Calories: 90 kcal",
    "Carbohydrates: 12 g",
    "Protein: 3 g",
    "Fats: 4 g",
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
          'Friday',
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
            Column(
              children: [
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
                Padding(
                  padding: EdgeInsets.only(left: padding, top: padding),
                  child: Align(
                    alignment: Alignment.centerLeft,
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
                Padding(
                  padding: EdgeInsets.only(left: padding, top: padding),
                  child: Align(
                    alignment: Alignment.centerLeft,
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
            )
          ],
        ),
      ),
    );
  }
}
