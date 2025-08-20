import 'package:flutter/material.dart';

class tuesdaypcosjapan extends StatefulWidget {
  const tuesdaypcosjapan({super.key});

  @override
  State<tuesdaypcosjapan> createState() => _tuesdaypcosjapanState();
}

class _tuesdaypcosjapanState extends State<tuesdaypcosjapan> {
  final List<String> breakfast = [
    "1 bowl japnese egg roll with spinach and edamame",
    "Calories:320 kcal",
    "Carbohydrates:8 g",
    "Protein:26 g",
    "Fats:18 g",
    "Fibre:5 g",
    "1 bowl of mixed berries(blueberries, strawberries or raspberries)",
    "Calories:70-80 kcal",
    "Carbohydrates:17-20 g",
    "Protein:1-1.5 g",
    "Fats:0.5 g",
    "Fibre:5-7 g",
  ];

  final List<String> lunch = [
    "1 plate grilled salmon,quinoa and avocado bowl",
    "Calories:430 kcal",
    "Carbohydrates:16 g",
    "Protein:30 g",
    "Fats:25 g",
    "Fibre:6 g",
    "2 piece kimchi",
    "Calories:10–15 kcal",
    "Carbohydrates:2–4 g",
    "Protein:0.5–1 g",
    "Fats:0–0.5 g",
    "Fibre:1–2 g",
  ];

  final List<String> dinner = [
    "1 Plate Grilled fish with brown rice ",
    "Calories:430-460 kcal",
    "Carbohydrates:30 g",
    "Protein:32 g",
    "Fats:20 g",
    "Fibre:3-4 g",
    "1 bowl stir fried veggies with tahini sauce",
    "Calories:200 kcal",
    "Carbohydrates:15 g",
    "Protein:5 g",
    "Fats:15 g",
    "Fibre:6 g",
    "1 Small Bowl of Kinpira Gobo",
    "Calories:100–130 kcal",
    "Carbohydrates:12 g",
    "Protein:1–2 g",
    "Fats:5–7 g",
    "Fibre:3–5 g",
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
    final fontSizeText = screenWidth * 0.042;

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
                      'assets5/images5/roll.jpeg',
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
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets5/images5/salmon.jpeg',
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
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
                    child: Text(
                      'DINNER',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.normal,
                          fontSize: fontSizeTitle),
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
                          'assets5/images5/brown.jpeg',
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
