import 'package:flutter/material.dart';

class fridaypcosjapan extends StatefulWidget {
  const fridaypcosjapan({super.key});

  @override
  State<fridaypcosjapan> createState() => _fridaypcosjapanState();
}

class _fridaypcosjapanState extends State<fridaypcosjapan> {
  final List<String> breakfast = [
    "1 bowl of black sesame protein smoothie(1/2 banana,1/2 greek yogurt,1 tbsp black sesame paste,1/2 cup unsweetened soy milk,1 tbsp chia seed",
    "Calories:310-330 kcal",
    "Carbohydrates:20-23 g",
    "Protein:20-22 g",
    "Fats:15 g",
    "Fibre:6-8 g",
  ];

  final List<String> lunch = [
    "1 large bowl of grilled chicken salad with avacado and sesame dressing",
    "Calories:700 kcal",
    "Carbohydrates:25 g",
    "Protein:60 g",
    "Fats:45 g",
    "Fibre:14 g",
    "1 bowl miso broth",
    "Calories:50–70 kcal",
    "Carbohydrates:8 g",
    "Protein:4 g",
    "Fats:2 g",
    "Fibre:2 g",
    "1 Bowl Boiled Brown Rice",
    "Calories:215 kcal",
    "Carbohydrates:45 g",
    "Protein:5 g",
    "Fats:1.8 g",
    "Fibre:3.5 g",
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
    return !text.contains(':') && !text.toLowerCase().contains("calories");
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
          'Friday',
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
                      'assets5/images5/hot.jpg',
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
                      'assets5/images5/cold.jpeg',
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
                      'assets5/images5/any.jpeg',
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
