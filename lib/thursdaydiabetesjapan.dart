import 'package:flutter/material.dart';

class thursdaydiabetesjapan extends StatefulWidget {
  const thursdaydiabetesjapan({super.key});

  @override
  State<thursdaydiabetesjapan> createState() => _thursdaydiabetesjapanState();
}

class _thursdaydiabetesjapanState extends State<thursdaydiabetesjapan> {
  final List<String> breakfast = [
    "1 bowl of Tamagoyaki (Japanese omelette)",
    "Calories: 120 kcal",
    "Protein: 7 g",
    "Carbs: 5 g",
    "Fat: 8 g",
    "Fiber: 0 g",
    "1 small bowl of Spinach Miso Soup",
    "Calories: 45 kcal",
    "Protein: 3 g",
    "Carbs: 4 g",
    "Fat: 2 g",
    "Fiber: 1 g",
    "1 Orange (small)",
    "Calories: 45 kcal",
    "Protein: 1 g",
    "Carbs: 11 g",
    "Fat: 0.1 g",
    "Fiber: 2 g",
  ];

  final List<String> lunch = [
    "1 bowl of Chicken Teriyaki (grilled, low-sugar sauce)",
    "Calories: 210 kcal",
    "Protein: 25 g",
    "Carbs: 6 g",
    "Fat: 10 g",
    "Fiber: 0 g",
    "1 bowl of Steamed Broccoli & Carrots",
    "Calories: 60 kcal",
    "Protein: 3 g",
    "Carbs: 9 g",
    "Fat: 1 g",
    "Fiber: 3 g",
    "½ bowl of Barley Rice",
    "Calories: 105 kcal",
    "Protein: 2 g",
    "Carbs: 22 g",
    "Fat: 0.5 g",
    "Fiber: 3 g",
  ];

  final List<String> dinner = [
    "1 bowl of Grilled Eggplant with Miso Sauce",
    "Calories: 140 kcal",
    "Protein: 4 g",
    "Carbs: 12 g",
    "Fat: 8 g",
    "Fiber: 4 g",
    "1 bowl of Soba Noodles (buckwheat, plain)",
    "Calories: 110 kcal",
    "Protein: 5 g",
    "Carbs: 19 g",
    "Fat: 1 g",
    "Fiber: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery values same as Tuesday's
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
        appBar: AppBar(
          title: Text('Thursday',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSizeTitle + 10,
                  color: Colors.green.shade800)),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
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
                    'assets5/images5/ww.jpg',
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
                    'assets5/images5/japan.jpg',
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
                    'assets5/images5/matcha.webp',
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
            ])));
  }
}
