import 'package:flutter/material.dart';

class SaturdayGutThai3 extends StatefulWidget {
  const SaturdayGutThai3({super.key});

  @override
  State<SaturdayGutThai3> createState() => _SaturdayGutThai3State();
}

class _SaturdayGutThai3State extends State<SaturdayGutThai3> {
  final List<String> breakfast = [
    "Thai egg white omelette with mushrooms & herbs (gut-friendly, low-fat)",
    "Calories: 180 kcal",
    "Carbohydrates: 4 g",
    "Protein: 18 g",
    "Fats: 10 g",
    "Fibre: 2 g",
    "1 glass warm ginger-infused almond milk (soothing for gut)",
    "Calories: 60 kcal",
    "Carbohydrates: 2 g",
    "Protein: 2 g",
    "Fats: 5 g",
    "Fibre: 1 g",
    "1 guava (rich in fiber and promotes digestion)",
    "Calories: 60 kcal",
    "Carbohydrates: 13 g",
    "Protein: 2 g",
    "Fats: 0 g",
    "Fibre: 5 g"
  ];

  final List<String> lunch = [
    "Thai grilled paneer salad with fresh herbs (anti-inflammatory)",
    "Calories: 300 kcal",
    "Carbohydrates: 10 g",
    "Protein: 25 g",
    "Fats: 18 g",
    "Fibre: 4 g",
    "1 small bowl jasmine rice (easy to digest)",
    "Calories: 140 kcal",
    "Carbohydrates: 30 g",
    "Protein: 2 g",
    "Fats: 0.5 g",
    "Fibre: 1 g",
    "1 bowl Thai clear soup with tofu and greens (probiotic-rich)",
    "Calories: 70 kcal",
    "Carbohydrates: 6 g",
    "Protein: 6 g",
    "Fats: 2 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "Thai stir-fried high-protein noodles (soy noodles + egg + tofu + veggies)",
    "Calories: 450 kcal",
    "Carbohydrates: 30 g",
    "Protein: 35 g",
    "Fats: 18 g",
    "Fibre: 6 g",
    "Chili garlic dipping sauce (stimulates digestion)",
    "Calories: 40 kcal",
    "Carbohydrates: 5 g",
    "Protein: 1 g",
    "Fats: 2 g",
    "Fibre: 1 g"
  ];

  bool isFoodItem(String text) {
    return !(text.toLowerCase().contains("calories") ||
        text.toLowerCase().contains("carbohydrates") ||
        text.toLowerCase().contains("protein") ||
        text.toLowerCase().contains("fats") ||
        text.toLowerCase().contains("fibre"));
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
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BREAKFAST
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('BREAKFAST',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets16/images16/tofu.jpeg',
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

            // LUNCH
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('LUNCH',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets20/images20/b.jpeg',
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

            // DINNER
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('DINNER',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets11/images11/c.jpeg',
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
          ],
        ),
      ),
    );
  }
}
