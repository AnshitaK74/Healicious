import 'package:flutter/material.dart';

class wednesdaypcos extends StatefulWidget {
  const wednesdaypcos({super.key});

  @override
  State<wednesdaypcos> createState() => _wednesdaypcosState();
}

class _wednesdaypcosState extends State<wednesdaypcos> {
  final List<String> breakfast = [
    "1 Plate Dhokla (6 to 8 pieces)",
    "Calories: 300–320 kcal",
    "Protein: 12–14g",
    "Carbohydrates: 35–40g",
    "Fats: 12g",
    "Fibre: 5–6g",
    "1 Apple",
    "Calories: 80 kcal",
    "Protein: 0.5g",
    "Carbohydrates: 21g",
    "Fats: 0.3g",
    "Fibre: 4g",
    "1 Orange",
    "Calories: 60 kcal",
    "Protein: 1g",
    "Carbohydrates: 15g",
    "Fats: 0.2g",
    "Fibre: 2.3g",
    "1 Boiled Egg",
    "Calories: 70 kcal",
    "Protein: 6.3g",
    "Carbohydrates: 0.6g",
    "Fats: 5.3g",
    "Fibre: 0g"
  ];

  final List<String> lunch = [
    "1 Mixed Dal (Moong + Toor + Masoor)",
    "Calories: 180–200 kcal",
    "Protein: 12–13g",
    "Carbohydrates: 25–28g",
    "Fats: 3–4g (with 1 tsp ghee)",
    "Fibre: 6–8g",
    "1 Brown/Hand-Pounded Rice",
    "Calories: 110 kcal",
    "Protein: 3g",
    "Carbohydrates: 22g",
    "Fats: 1.6g",
    "Fibre: 3.5g",
    "1 Large Makka Roti",
    "Calories: 150 kcal",
    "Protein: 3g",
    "Carbohydrates: 31g",
    "Fats: 1g",
    "Fibre: 2.5g",
    "2 Tbsp Mint-Coriander Chutney",
    "Calories: 20 kcal",
    "Protein: 1g",
    "Carbohydrates: 7g",
    "Fats: 0.5g",
    "Fibre: 2g"
  ];

  final List<String> dinner = [
    "2 Bowls Kala Chana",
    "Calories: 330 kcal",
    "Protein: 18g",
    "Carbohydrates: 60g",
    "Fats: 5g",
    "Fibre: 12g",
    "1 Wheat Roti",
    "Calories: 120 kcal",
    "Protein: 4g",
    "Carbohydrates: 28g",
    "Fats: 2g",
    "Fibre: 3g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double padding = screenWidth * 0.04;
    final double fontSizeTitle = screenWidth * 0.05;
    final double fontSizeText = screenWidth * 0.04;
    final double borderRadius = 10; // same fixed border radius
    final double imageHeight = screenHeight * 0.25;
    final double imageWidth = screenWidth * 0.4;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wednesday',
          style: TextStyle(
              fontSize: fontSizeTitle + 10,
              fontWeight: FontWeight.bold,
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
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets2/images2/images-25.jpeg',
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
              child: Padding(
                padding: EdgeInsets.only(left: padding, top: padding),
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets2/images2/dal.jpeg',
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
              child: Padding(
                padding: EdgeInsets.only(left: padding, top: padding),
                child: Text(
                  'DINNER',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  'assets2/images2/chana.jpeg',
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
