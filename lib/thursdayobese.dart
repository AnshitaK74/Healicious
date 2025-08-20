import 'package:flutter/material.dart';

class ThursdayObese extends StatefulWidget {
  const ThursdayObese({super.key});

  @override
  State<ThursdayObese> createState() => _ThursdayObeseState();
}

class _ThursdayObeseState extends State<ThursdayObese> {
  final List<String> breakfast = [
    "1 Plate Moong Dal Besan Dhokla",
    "Calories:350-400 kcal",
    "Carbohydrates:40-45 g",
    "Protein:20-25 g",
    "Fat:12-14 g",
    "Fiber:6-7 g",
    "1 Glass Dry Fruits Milk (Almond, Sunflower Seed, Pumpkin Seed, Cashew, Dates)",
    "Calories:220-250 kcal",
    "Carbohydrates:20-24 g",
    "Protein:8-10 g",
    "Fat:12-14 g",
    "Fiber:2-4 g"
  ];

  final List<String> lunch = [
    "1 Bowl Palak Paneer",
    "Calories:250-300 kcal",
    "Carbohydrates:10-12 g",
    "Protein:12-15 g",
    "Fat:18-20 g",
    "Fiber:4-5 g",
    "2 MultiGrain Roti",
    "Calories:250–300 kcal",
    "Carbbohydrates:45–50 g",
    "Protein:8–10 g",
    "Fat:4–6 g",
    "Fiber:6–8 g"
  ];

  final List<String> dinner = [
    "1 Bowl Arhar Daal",
    "Calories:250 kcal",
    "Carbohydrates:30 g",
    "Protein:12-13 g",
    "2 MultiGrain Roti",
    "Calories:180-220 kcal",
    "Carbohydrates:28-32 g",
    "Protein:9-11 g",
    "Fat:4–6 g",
    "Fiber:6–8 g",
    "1 Bowl Brown Rice",
    "Calories:160–170 kcal",
    "Carbohydrates:34 g",
    "Protein:3.5 g",
    "Fat:1 g",
    "Fiber: 3.5 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') &&
        !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("protein") &&
        !text.toLowerCase().contains("fat") &&
        !text.toLowerCase().contains("fiber") &&
        !text.toLowerCase().contains("calcium");
  }

  @override
  Widget build(BuildContext context) {
    // ✅ Added MediaQuery scaling like SaturdayObese
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
            fontSize: fontSizeTitle + 10, // responsive
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
                    fontSize: fontSizeTitle, // responsive
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets4/img4/chilla.jpeg',
                  height: imageHeight, // responsive
                  width: imageWidth,   // responsive
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
                      fontSize: fontSizeText, // responsive
                      color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0), // responsive
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeTitle, // responsive
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets4/img4/ma.jpg',
                  height: imageHeight, // responsive
                  width: imageWidth,   // responsive
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
                      fontSize: fontSizeText, // responsive
                      color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0), // responsive
                child: Text(
                  'DINNER',
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeTitle, // responsive
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets4/img4/papad.webp',
                  height: imageHeight, // responsive
                  width: imageWidth,   // responsive
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
                  padding: EdgeInsets.all(screenWidth * 0.005), // responsive
                  child: ListTile(
                    title: Text(
                      dinner[index],
                      style: TextStyle(
                        fontSize: fontSizeText, // responsive
                        color: isFoodItem(dinner[index]) ? Colors.green.shade700 : Colors.black,
                        fontWeight: isFoodItem(dinner[index]) ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
