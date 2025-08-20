import 'package:flutter/material.dart';

class fridaydiabetesjapan extends StatefulWidget {
  const fridaydiabetesjapan({super.key});

  @override
  State<fridaydiabetesjapan> createState() => _fridaydiabetesjapanState();
}

class _fridaydiabetesjapanState extends State<fridaydiabetesjapan> {
  final List<String> breakfast = [
    "1 bowl of Oatmeal with Soy Milk",
    "Calories: 150 kcal",
    "Protein: 6 g",
    "Carbs: 22 g",
    "Fat: 5 g",
    "Fiber: 3 g",
    "1 Boiled Egg",
    "Calories: 70 kcal",
    "Protein: 6 g",
    "Carbs: 0.6 g",
    "Fat: 5 g",
    "Fiber: 0 g",
    "½ Papaya (medium)",
    "Calories: 55 kcal",
    "Protein: 0.5 g",
    "Carbs: 14 g",
    "Fat: 0.2 g",
    "Fiber: 2.5 g",
  ];

  final List<String> lunch = [
    "1 bowl of Grilled Salmon",
    "Calories: 200 kcal",
    "Protein: 22 g",
    "Carbs: 0 g",
    "Fat: 13 g",
    "Fiber: 0 g",
    "1 bowl of Kinpira Gobo (burdock & carrot)",
    "Calories: 70 kcal",
    "Protein: 2 g",
    "Carbs: 10 g",
    "Fat: 3 g",
    "Fiber: 3 g",
    "½ bowl of Mixed Grain Rice",
    "Calories: 120 kcal",
    "Protein: 3 g",
    "Carbs: 24 g",
    "Fat: 1 g",
    "Fiber: 2 g",
  ];

  final List<String> dinner = [
    "1 bowl of Tofu and Seaweed Soup",
    "Calories: 90 kcal",
    "Protein: 7 g",
    "Carbs: 4 g",
    "Fat: 5 g",
    "Fiber: 1 g",
    "1 bowl of Stir-Fried Bok Choy with Garlic",
    "Calories: 60 kcal",
    "Protein: 2 g",
    "Carbs: 6 g",
    "Fat: 3 g",
    "Fiber: 2.5 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery values same as Thursday's
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
                    'assets5/images5/wasabi.jpeg',
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
                    'assets6/images6/b.jpeg',
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
                    'assets6/images6/clon.jpeg',
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
