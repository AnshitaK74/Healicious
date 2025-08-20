import 'package:flutter/material.dart';

class thursdayGutJapan extends StatefulWidget {
  const thursdayGutJapan({super.key});

  @override
  State<thursdayGutJapan> createState() => _thursdayGutJapanState();
}

class _thursdayGutJapanState extends State<thursdayGutJapan> {
  final List<String> breakfast = [
    "1 boiled egg + 1 small bowl fermented brown rice",
    "Calories: 210 kcal",
    "Carbohydrates: 22 g",
    "Protein: 9 g",
    "Fats: 7 g",
    "Fibre: 2 g",

    "1 cup barley tea",
    "Calories: 0 kcal",
    "Carbohydrates: 0 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g",
  ];

  final List<String> lunch = [
    "Chicken and tofu nabe (hot broth with veggies and mushrooms)",
    "Calories: 450 kcal",
    "Carbohydrates: 15 g",
    "Protein: 38 g",
    "Fats: 20 g",
    "Fibre: 5 g",

    "Side of pickled daikon (tsukemono)",
    "Calories: 30 kcal",
    "Carbohydrates: 6 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 2 g",
  ];

  final List<String> dinner = [
    "Grilled salmon with steamed broccoli",
    "Calories: 400 kcal",
    "Carbohydrates: 6 g",
    "Protein: 35 g",
    "Fats: 25 g",
    "Fibre: 3 g",

    "1 cup miso soup with wakame",
    "Calories: 60 kcal",
    "Carbohydrates: 5 g",
    "Protein: 3 g",
    "Fats: 2 g",
    "Fibre: 1 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery variables exactly like your other days
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
              child: Image.asset('assets5/images5/tata.jpg',
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
              child: Image.asset('assets5/images5/uio.jpeg',
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
              child: Image.asset('assets5/images5/sea.webp',
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
