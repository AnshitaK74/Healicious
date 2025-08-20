import 'package:flutter/material.dart';

class tuesdaypcos extends StatefulWidget {
  const tuesdaypcos({super.key});

  @override
  State<tuesdaypcos> createState() => _tuesdaypcosState();
}

class _tuesdaypcosState extends State<tuesdaypcos> {
  final List<String> breakfast = [
    "Besan Chilla with grated vegetables (2 pieces)",
    "Calories: 260 kcal",
    "Protein: 12g",
    "Carbohydrates: 24g",
    "Fats: 10g",
    "Fibre: 4g",
    "Tulsi Ginger Herbal Tea (no sugar)",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "Quinoa Khichdi with vegetables (1 bowl)",
    "Calories: 300 kcal",
    "Protein: 12g",
    "Carbohydrates: 38g",
    "Fibre: 5g",
    "Fats: 8g",
    "1 small bowl cucumber raita",
    "Calories: 90 kcal",
    "Protein: 4g",
    "Carbohydrates: 6g",
    "Fats: 5g"
  ];

  final List<String> dinner = [
    "Stuffed Lauki with Paneer (1 bowl)",
    "Calories: 220 kcal",
    "Protein: 14g",
    "Carbohydrates: 12g",
    "Fats: 10g",
    "Fibre: 4g",
    "2 Jowar Roti",
    "Calories: 200 kcal",
    "Protein: 6g",
    "Carbohydrates: 38g",
    "Fats: 2g",
    "Fibre: 6g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double paddingHorizontal = screenWidth * 0.04;
    final double paddingTopSection = screenWidth * 0.05;
    final double paddingBottomSection = screenWidth * 0.015;

    final double fontSizeTitle = screenWidth * 0.05;
    final double fontSizeText = screenWidth * 0.04;
    final double borderRadius = 10; // fixed for neatness
    final double imageHeight = screenHeight * 0.25;
    final double imageWidth = screenWidth * 0.4;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tuesday',
          style: TextStyle(
            fontSize: fontSizeTitle + 10,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildSectionTitle('BREAKFAST', paddingHorizontal, paddingTopSection, paddingBottomSection, fontSizeTitle),
            buildMealCardWithList(
              imagePath: 'assets2/images2/bowl.webp',
              mealList: breakfast,
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSizeText: fontSizeText,
            ),
            buildSectionTitle('LUNCH', paddingHorizontal, paddingTopSection, paddingBottomSection, fontSizeTitle),
            buildMealCardWithList(
              imagePath: 'assets2/images2/kk.webp',
              mealList: lunch,
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSizeText: fontSizeText,
            ),
            buildSectionTitle('DINNER', paddingHorizontal, paddingTopSection, paddingBottomSection, fontSizeTitle),
            buildMealCardWithList(
              imagePath: 'assets2/images2/dd.jpeg',
              mealList: dinner,
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSizeText: fontSizeText,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title, double paddingLeft, double paddingTop, double paddingBottom, double fontSize) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft, top: paddingTop, bottom: paddingBottom),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.normal,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }

  Widget buildMealCardWithList({
    required String imagePath,
    required List<String> mealList,
    required double imageHeight,
    required double imageWidth,
    required double borderRadius,
    required double fontSizeText,
  }) {
    return Column(
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.asset(
              imagePath,
              height: imageHeight,
              width: imageWidth,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: mealList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(fontSizeText * 0.5),
              child: ListTile(
                title: Text(
                  mealList[index],
                  style: TextStyle(
                    fontSize: fontSizeText,
                    color: isFoodItem(mealList[index]) ? Colors.green.shade600 : Colors.black,
                    fontWeight: isFoodItem(mealList[index]) ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
