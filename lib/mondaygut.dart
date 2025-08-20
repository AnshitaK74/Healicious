import 'package:flutter/material.dart';

class mondayGutJapan extends StatefulWidget {
  const mondayGutJapan({super.key});

  @override
  State<mondayGutJapan> createState() => _mondayGutJapanState();
}

class _mondayGutJapanState extends State<mondayGutJapan> {
  final List<String> breakfast = [
    "1 bowl Okayu (rice porridge) with tofu",
    "Calories: ~180 kcal",
    "Carbohydrates: 32 g",
    "Protein: 6 g",
    "Fats: 3 g",
    "Fibre: 1 g",
    "1 cup Hojicha tea (low caffeine)",
    "Calories: 0–2 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl Soba noodles with vegetables & sesame dressing",
    "Calories: ~350 kcal",
    "Carbohydrates: 50 g",
    "Protein: 12 g",
    "Fats: 8 g",
    "Fibre: 4 g",
    "1 cup Miso soup (low sodium)",
    "Calories: ~40 kcal",
    "Carbohydrates: 3 g",
    "Protein: 3 g",
    "Fats: 1.5 g",
    "Fibre: 1 g",
  ];

  final List<String> dinner = [
    "Grilled salmon (small fillet) + Steamed spinach with sesame",
    "Calories: ~300 kcal",
    "Carbohydrates: 4 g",
    "Protein: 25 g",
    "Fats: 18 g",
    "Fibre: 2 g",
    "1 bowl Brown rice (small)",
    "Calories: ~110 kcal",
    "Carbohydrates: 23 g",
    "Protein: 2.5 g",
    "Fats: 1 g",
    "Fibre: 1.5 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery variables exactly like mondaydiabetesjapan
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
          'Monday',
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
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/tea.jpg',
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
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/cahan.jpeg',
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
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/k.jpeg',
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
