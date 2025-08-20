import 'package:flutter/material.dart';

class saturdaypcosjapan extends StatefulWidget {
  const saturdaypcosjapan({super.key});

  @override
  State<saturdaypcosjapan> createState() => _saturdaypcosjapanState();
}

class _saturdaypcosjapanState extends State<saturdaypcosjapan> {
  final List<String> breakfast = [
    "1 bowl Japanese oatmeal with soy milk and berries",
    "Calories:200 kcal",
    "Carbohydrates:30 g",
    "Protein:8 g",
    "Fats:6 g",
    "Fibre:5 g",
    "1 cup green tea",
    "Calories:2 kcal",
    "Carbohydrates:0.5 g",
    "Protein:0 g",
    "Fats:0 g",
    "Fibre:0 g",
  ];

  final List<String> lunch = [
    "1 bowl Grilled Chicken Soba Noodles with vegetables",
    "Calories:520 kcal",
    "Carbohydrates:45 g",
    "Protein:35 g",
    "Fats:15 g",
    "Fibre:6 g",
    "Sodium:700 mg",
    "1 small bowl edamame with salt",
    "Calories:120 kcal",
    "Carbohydrates:9 g",
    "Protein:9 g",
    "Fats:5 g",
    "Fibre:4 g",
    "Sodium:30-40 mg",
  ];

  final List<String> dinner = [
    "1 bowl Tofu & Vegetable Hotpot",
    "Calories:220 kcal",
    "Carbohydrates:12 g",
    "Protein:20 g",
    "Fats:9 g",
    "Fibre:4 g",
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
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saturday',
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
                      'assets20/images20/h.jpeg', // replace with your asset
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
                          'assets20/images20/h.jpeg', // replace with your asset
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
                          'assets20/images20/h.jpeg', // replace with your asset
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
                              ? Colors.green.shade600
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
