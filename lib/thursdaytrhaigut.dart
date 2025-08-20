import 'package:flutter/material.dart';

class FridayPCOSThaixxx extends StatefulWidget {
  const FridayPCOSThaixxx({super.key});

  @override
  State<FridayPCOSThaixxx> createState() => _FridayPCOSThaixxxState();
}

class _FridayPCOSThaixxxState extends State<FridayPCOSThaixxx> {
  final List<String> breakfast = [
    "Thai chia coconut pudding with papaya cubes",
    "Calories: 220 kcal",
    "Carbohydrates: 18 g",
    "Protein: 6 g",
    "Fats: 14 g",
    "Fibre: 5 g",
    "1 cup herbal ginger tea (no sugar)",
    "Calories: 5 kcal",
    "Carbohydrates: 1 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g"
  ];

  final List<String> lunch = [
    "Steamed Thai vegetable dumplings (rice paper + mushrooms + cabbage + tofu)",
    "Calories: 260 kcal",
    "Carbohydrates: 30 g",
    "Protein: 12 g",
    "Fats: 10 g",
    "Fibre: 5 g",
    "1 bowl spicy lemongrass soup with tofu and kale",
    "Calories: 80 kcal",
    "Carbohydrates: 6 g",
    "Protein: 5 g",
    "Fats: 3 g",
    "Fibre: 2 g"
  ];

  final List<String> dinner = [
    "Thai brown rice noodle bowl with basil, edamame, sprouts, and light tamari dressing",
    "Calories: 390 kcal",
    "Carbohydrates: 40 g",
    "Protein: 18 g",
    "Fats: 16 g",
    "Fibre: 6 g",
    "1 cup mint-cucumber cooler (unsweetened)",
    "Calories: 20 kcal",
    "Carbohydrates: 4 g",
    "Protein: 0 g",
    "Fats: 0 g",
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
          'Thursday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle + 10,
            color: Colors.green.shade800,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green.shade800),
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
                  'assets20/images20/h.jpeg',
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
                  'assets20/images20/h.jpeg',
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
