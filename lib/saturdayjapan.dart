import 'package:flutter/material.dart';

class saturdayjapan extends StatefulWidget {
  const saturdayjapan({super.key});

  @override
  State<saturdayjapan> createState() => _saturdayjapanState();
}

class _saturdayjapanState extends State<saturdayjapan> {
  final List<String> breakfast = [
    "1 plate scrambled eggs with avocado, spinach and sweet potato",
    "Calories:450-500 kcal",
    "Carbohydrates:40-45 g",
    "Protein:25-30 g",
    "Fats:25-30 g",
    "Fibre:10-12 g",
    "1 pear",
    "Calories:100-110 kcal",
    "Carbohydrates:40-45 g",
    "Protein:0.5 g",
    "Fats:0.2 g",
    "Fibre:6 g",
  ];

  final List<String> lunch = [
    "1 large bowl of grilled tofu with seaweed salad and shirataki noodles",
    "Calories:550 kcal",
    "Carbohydrates:20 g",
    "Protein:35 g",
    "Fats:25 g",
    "Fibre:12 g",
    "1 small bowl kimchi",
    "Calories:20-40 kcal",
    "Carbohydrates:4-7 g",
    "Protein:1-2 g",
    "Fats:0-1 g",
    "Fibre:1-2 g",
  ];

  final List<String> dinner = [
    "1 large bowl of miso vegetable hot pot",
    "Calories:150-200 kcal",
    "Carbohydrates:15-20 g",
    "Protein:10-12 g",
    "Fats:6-8 g",
    "Fibre:6-8 g",
    "sugar:6-8 g",
    "1 small bowl edamame salad",
    "Calories:90-110 kcal",
    "Carbohydrates:8-10 g",
    "Protein:9-10 g",
    "Fats:4-5 g",
    "Fibre:3 g",
    "sugar:2-3 g",
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
          'Saturday',
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
                      'assets5/images5/by.jpeg',
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
                      'assets5/images5/ok.jpg',
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
                      'assets5/images5/random.jpeg',
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
