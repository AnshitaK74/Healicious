import 'package:flutter/material.dart';

class fridaygutindian extends StatefulWidget {
  const fridaygutindian({super.key});

  @override
  State<fridaygutindian> createState() => _fridaygutindianState();
}

class _fridaygutindianState extends State<fridaygutindian> {
  final List<String> breakfast = [
    "2 idlis with coconut chutney (less spicy)",
    "Calories: 180 kcal",
    "Protein: 5 g",
    "Carbohydrates: 30 g",
    "Fibre: 2 g",
    "Fats: 4 g",

    "1 cup lemon-ginger warm water",
    "Calories: 5 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl of pumpkin and peas curry",
    "Calories: 100 kcal",
    "Protein: 3 g",
    "Carbs: 14 g",
    "Fats: 4 g",
    "Fiber: 3 g",

    "1 medium roti (multigrain)",
    "Calories: 110 kcal",
    "Protein: 3 g",
    "Carbs: 20 g",
    "Fats: 2.5 g",
    "Fiber: 2 g",

    "1 glass of chaas (buttermilk) with ajwain",
    "Calories: 35 kcal",
    "Protein: 2 g",
    "Carbs: 4 g",
    "Fats: 1 g",
    "Fiber: 0 g",
  ];

  final List<String> dinner = [
    "1 bowl of paneer bhurji (low oil)",
    "Calories: 180 kcal",
    "Protein: 12 g",
    "Carbs: 5 g",
    "Fat: 13 g",
    "Fiber: 2 g",

    "1 small bowl of sautéed green beans and carrots",
    "Calories: 70 kcal",
    "Protein: 2 g",
    "Carbs: 9 g",
    "Fat: 3 g",
    "Fiber: 3 g",

    "1 cup of fennel and mint herbal tea",
    "Calories: 2 kcal",
    "Protein: 0 g",
    "Carbs: 0.5 g",
    "Fat: 0 g",
    "Fiber: 0 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery variables for responsiveness (matching tuesdaygutindian etc)
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text('Friday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeTitle + 10,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  'assets2/images2/mit.jpeg',
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
                  'assets2/images2/anju.jpeg',
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
                  'assets2/images2/img_25.png',
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
