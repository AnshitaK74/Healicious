import 'package:flutter/material.dart';

class tuesdayGutJapan extends StatefulWidget {
  const tuesdayGutJapan({super.key});

  @override
  State<tuesdayGutJapan> createState() => _tuesdayGutJapanState();
}

class _tuesdayGutJapanState extends State<tuesdayGutJapan> {
  final List<String> breakfast = [
    "1 cup plain yogurt with chia & banana slices",
    "Calories: 180 kcal",
    "Carbohydrates: 20 g",
    "Protein: 9 g",
    "Fats: 6 g",
    "Fibre: 3 g",
    "1 cup warm barley tea",
    "Calories: 0–2 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl Grilled tofu & brown rice bowl with veggies",
    "Calories: ~400 kcal",
    "Carbohydrates: 45 g",
    "Protein: 20 g",
    "Fats: 12 g",
    "Fibre: 6 g",
    "1 small portion pickled daikon (fermented)",
    "Calories: 10 kcal",
    "Carbohydrates: 2 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 1 g",
  ];

  final List<String> dinner = [
    "Chicken & tofu Nabe (Japanese hot pot)",
    "Calories: ~450 kcal",
    "Carbohydrates: 18 g",
    "Protein: 35 g",
    "Fats: 20 g",
    "Fibre: 5 g",
    "Clear soup broth (kombu, ginger, mushrooms)",
    "Calories: ~20 kcal",
    "Carbohydrates: 2 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 1 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery values from mondaydiabetesjapan
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
              color: Colors.green.shade800),
        ),
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
                          color: Colors.green.shade800)))),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/unagi.jpeg',
                  height: imageHeight, width: imageWidth, fit: BoxFit.cover),
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
          Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
                child: Text('LUNCH',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              )),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/wasabi.jpeg',
                  height: imageHeight, width: imageWidth, fit: BoxFit.cover),
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
          Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
                child: Text('DINNER',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              )),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/vahi.jpg',
                  height: imageHeight, width: imageWidth, fit: BoxFit.cover),
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
        ]),
      ),
    );
  }
}
