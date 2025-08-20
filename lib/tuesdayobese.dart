import 'package:flutter/material.dart';

class TuesdayObese extends StatefulWidget {
  const TuesdayObese({super.key});

  @override
  State<TuesdayObese> createState() => _TuesdayObeseState();
}

class _TuesdayObeseState extends State<TuesdayObese> {
  final List<String> breakfast = [
    "1 bowl oats and milk (1 chopped banana,1 handful of nuts,1 tbsp of chia seeds)",
    "Calories:630–660 kcal",
    "Carbohydrates:77 g",
    "Protein:21 g",
    "Fat:30 g",
    "Fiber:15–17 g",
  ];

  final List<String> lunch = [
    "1  1/2 Bowl Rajma",
    "Calories:320–360 kcal",
    "Carbohydrates:60-80 g",
    "Protein:20 g",
    "Fat:1.5 g",
    "Fiber:19 g",

    "1 Quinoa Roti",
    "Calories:120–140 kcal",
    "Carbohydrates:20 g",
    "Protein:5 g",
    "Fat:2 g",
    "Fiber:3 g",

    "1 Bowl Brown Rice",
    "Calories:160–170 kcal",
    "Carbohydrates:34 g",
    "Protein:3.5 g",
    "Fat:1 g",
    "Fiber: 3.5 g",

    "1 Bowl Curd(Optional)",
    "Calories:130–150 kcal",
    "Carbohydrates:10 g",
    "Protein:7 g",
    "Fat:8 g",
    "Calcium:250 mg",
  ];

  final List<String> dinner = [
    "1 Bowl Chana Dal",
    "Calories:230–250 kcal",
    "Carbohydrates:40 g",
    "Protein:12 g",
    "Fat:3 g",
    "Fiber:10 g",

    "2 MultiGrain Roti",
    "Calories:250–300 kcal",
    "Carbbohydrates:45–50 g",
    "Protein:8–10 g",
    "Fat:4–6 g",
    "Fiber:6–8 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') &&
        !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("fiber") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("fat") &&
        !text.toLowerCase().contains("protein") &&
        !text.toLowerCase().contains("calcium");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery responsiveness same as MondayObese
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
            color: Colors.green.shade800,
          ),
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
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets4/img4/milk.jpeg',
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
                    fontSize: fontSizeTitle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets4/img4/chana.jpg',
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
                    fontSize: fontSizeTitle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets4/img4/chana2.jpg',
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
                return Padding(
                  padding: EdgeInsets.all(screenWidth * 0.005),
                  child: ListTile(
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
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
