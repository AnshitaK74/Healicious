import 'package:flutter/material.dart';

class MexicaPCOSDiet extends StatefulWidget {
  const MexicaPCOSDiet({super.key});

  @override
  State<MexicaPCOSDiet> createState() => _MexicaPCOSDietState();
}

class _MexicaPCOSDietState extends State<MexicaPCOSDiet> {
  final List<String> breakfast = [
    "Moong Dal Chilla with Mint Chutney",
    "Calories: 280 kcal",
    "Protein: 16g",
    "Carbohydrates: 26g",
    "Fats: 10g",
    "Fibre: 4g",
    "Masala Herbal Tea (No Sugar)",
    "Calories: 5 kcal",
  ];

  final List<String> lunch = [
    "1 Bowl Palak Tofu Curry",
    "Calories: 190 kcal",
    "Protein: 14g",
    "Carbohydrates: 10g",
    "Fibre: 3.5g",
    "Fats: 10g",
    "1 Bajra Roti",
    "Calories: 110 kcal",
    "Carbohydrates: 22g",
    "Protein: 3g",
    "Fats: 2g",
    "Fibre: 2.5g",
    "1 Cup Mixed Vegetable Salad",
    "Calories: 60 kcal",
    "Protein: 2g",
    "Carbohydrates: 8g",
    "Fats: 2g",
    "Fibre: 3g"
  ];

  final List<String> dinner = [
    "1 Bowl Lauki (Bottle Gourd) Curry",
    "Calories: 70 kcal",
    "Carbohydrates: 8g",
    "Protein: 2g",
    "Fats: 3g",
    "Fibre: 2g",
    "2 Multigrain Roti",
    "Calories: 200 kcal",
    "Carbohydrates: 36g",
    "Protein: 6g",
    "Fats: 3g",
    "Fibre: 4g",
    "1 Small Bowl Plain Curd",
    "Calories: 80 kcal",
    "Carbohydrates: 5g",
    "Protein: 4g",
    "Fats: 4g",
    "Fibre: 0g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery variables for responsiveness
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double padding = width * 0.04;
    final double fontSizeTitle = width * 0.05;
    final double fontSizeText = width * 0.04;
    final double borderRadius = width * 0.025;
    final double imageHeight = height * 0.31;
    final double imageWidth = width * 0.53;
    final double translateOffsetX = padding;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Monday',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSizeTitle + width * 0.02, // Slightly bigger than title
              color: Colors.green.shade800,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
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
            buildMealSection(
              imagePath: 'assets7/images7/zxc.jpeg',
              mealList: breakfast,
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSizeText: fontSizeText,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(translateOffsetX, 0),
                child: Text(
                  'LUNCH',
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle),
                ),
              ),
            ),
            buildMealSection(
              imagePath: 'assets7/images7/yoga.jpeg',
              mealList: lunch,
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSizeText: fontSizeText,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(translateOffsetX, 0),
                child: Text(
                  'DINNER',
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle),
                ),
              ),
            ),
            buildMealSection(
              imagePath: 'assets7/images7/vv.jpg',
              mealList: dinner,
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSizeText: fontSizeText,
            ),
          ]),
        ));
  }

  Widget buildMealSection({
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
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
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
            return ListTile(
              title: Text(
                mealList[index],
                style: TextStyle(
                  fontSize: fontSizeText,
                  color: isFoodItem(mealList[index])
                      ? Colors.green.shade700
                      : Colors.black,
                  fontWeight: isFoodItem(mealList[index])
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
