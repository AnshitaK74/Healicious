import 'package:flutter/material.dart';

class wednesdayGutJapan extends StatefulWidget {
  const wednesdayGutJapan({super.key});

  @override
  State<wednesdayGutJapan> createState() => _wednesdayGutJapanState();
}

class _wednesdayGutJapanState extends State<wednesdayGutJapan> {
  final List<String> breakfast = [
    "1 cup vegetable juice (carrot, apple, ginger)",
    "Calories: 80 kcal",
    "Carbohydrates: 18 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 2 g",

    "1 bowl warm fermented brown rice porridge",
    "Calories: 160 kcal",
    "Carbohydrates: 28 g",
    "Protein: 4 g",
    "Fats: 3 g",
    "Fibre: 3 g",
  ];

  final List<String> lunch = [
    "Grilled mackerel with grated daikon & miso soup",
    "Calories: ~500 kcal",
    "Carbohydrates: 10 g",
    "Protein: 35 g",
    "Fats: 28 g",
    "Fibre: 2 g",

    "Side of steamed spinach with sesame dressing",
    "Calories: 60 kcal",
    "Carbohydrates: 3 g",
    "Protein: 3 g",
    "Fats: 4 g",
    "Fibre: 2 g",
  ];

  final List<String> dinner = [
    "1 bowl soba noodles in dashi broth with tofu & wakame",
    "Calories: 380 kcal",
    "Carbohydrates: 45 g",
    "Protein: 15 g",
    "Fats: 10 g",
    "Fibre: 4 g",

    "Steamed pumpkin cubes",
    "Calories: 80 kcal",
    "Carbohydrates: 15 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 3 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery values - exactly same pattern as your other screens
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
        child: Column(children: [
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
          Card(
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/misosoup.jpg',
                  height: imageHeight, width: imageWidth, fit: BoxFit.cover),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
              child: Text(
                'LUNCH',
                style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeTitle),
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/mush.jpeg',
                  height: imageHeight, width: imageWidth, fit: BoxFit.cover),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
              child: Text(
                'DINNER',
                style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeTitle),
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets5/images5/nik.jpeg',
                  height: imageHeight, width: imageWidth, fit: BoxFit.cover),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
