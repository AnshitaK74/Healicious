import 'package:flutter/material.dart';

class thursdaypcosjapan extends StatefulWidget {
  const thursdaypcosjapan({super.key});

  @override
  State<thursdaypcosjapan> createState() => _thursdaypcosjapanState();
}

class _thursdaypcosjapanState extends State<thursdaypcosjapan> {
  final List<String> breakfast = [
    "1 plum",
    "Calories:30 kcal",
    "Carbohydrates:7.5 g",
    "Protein:0.5 g",
    "Fats:0 g",
    "Fibre:1 g",
    "2 pieces of tamago yaki",
    "Calories:160-180 kcal",
    "Carbohydrates:1-2 g",
    "Protein:12-14 g",
    "Fats:12-14 g",
    "Fibre:0 g",
    "sugar:<1 g",
    "1 normal size glass matcha latte",
    "Calories:40-55 kcal",
    "Carbohydrates:1-2 g",
    "Protein:1-2 g",
    "Fats:2-3 g",
    "Fibre:1 g",
    "sugar:<1 g",
  ];

  final List<String> lunch = [
    "1 large bowl of oyakodon",
    "Calories:500–650 kcal",
    "Carbohydrates:50–60 g",
    "Protein:30–35 g",
    "Fats:15–20 g",
    "Fibre:2–3 g",
    "1 bowl seaweed salad",
    "Calories:45–70 kcal",
    "Carbohydrates:8–10 g",
    "Protein:1–2 g",
    "Fats:2–4 g",
    "Fibre:1–3 g",
    "1 bowl of miso soup with tofu and seaweed",
    "Calories:60-80 kcal",
    "Carbohydrates:6-8 g",
    "Protein:6-8 g",
    "Fats:3 g",
    "Fibre:1–2 g",
  ];

  final List<String> dinner = [
    "1 bowl grilled salmon teriyaki",
    "Calories:300 kcal",
    "Carbohydrates:3-5 g",
    "Protein:30 g",
    "Fats:18 g",
    "Fibre:0 g",
    "1/2 bowl brown rice",
    "Calories:110 kcal",
    "Carbohydrates:22 g",
    "Protein:2 g",
    "Fats:10 g",
    "Fibre:1.5 g",
    "1 bowl nimono",
    "Calories:70-90 kcal",
    "Carbohydrates:12-15 g",
    "Protein:2-3 g",
    "Fats:2-3 g",
    "Fibre:3-4 g",
    "1 bowl seaweed cucumber salad",
    "Calories:50-70 kcal",
    "Carbohydrates:5-7 g",
    "Protein:1-2 g",
    "Fats:3-4 g",
    "Fibre:2-3 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories") && !text.toLowerCase().contains("sugar");
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final borderRadius = BorderRadius.circular(width * 0.04);
    final imageHeight = height * 0.25;
    final imageWidth = width * 0.4;
    final headerFontSize = width * 0.05;
    final sectionPadding = EdgeInsets.all(width * 0.025);
    final listTileFontSize = width * 0.038;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thursday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.08,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: sectionPadding,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                    fontSize: headerFontSize,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  child: ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.asset(
                      'assets5/images5/j.jpeg',
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
                          fontSize: listTileFontSize,
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
                    offset: Offset(width * 0.04, 0),
                    child: Text(
                      'LUNCH',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: headerFontSize,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  child: ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.asset(
                      'assets5/images5/kimchi.jpg',
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
                          fontSize: listTileFontSize,
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
                    offset: Offset(width * 0.04, 0),
                    child: Text(
                      'DINNER',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: headerFontSize,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  child: ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.asset(
                      'assets5/images5/am.jpg',
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
                          fontSize: listTileFontSize,
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
          ],
        ),
      ),
    );
  }
}
