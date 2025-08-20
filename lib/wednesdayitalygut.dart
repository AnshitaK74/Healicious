import 'package:flutter/material.dart';

class WednesdayItalianGutHighProtein extends StatefulWidget {
  const WednesdayItalianGutHighProtein({super.key});

  @override
  State<WednesdayItalianGutHighProtein> createState() =>
      _WednesdayItalianGutHighProteinState();
}

class _WednesdayItalianGutHighProteinState
    extends State<WednesdayItalianGutHighProtein> {
  final List<String> breakfast = [
    "Greek Yogurt with Chia Seeds and Berries",
    "Calories: 220 kcal",
    "Proteins: 15g",
    "Carbohydrates: 18g",
    "Fats: 8g",
    "Fibre: 4g",
    "Green Tea (unsweetened)",
    "Calories: 2 kcal",
    "Fibre: 0g",
  ];

  final List<String> lunch = [
    "Grilled Chicken Breast with Quinoa & Roasted Zucchini",
    "Calories: 320 kcal",
    "Protein: 35g",
    "Carbohydrates: 22g",
    "Fats: 10g",
    "Fibre: 5g",
    "Rocket Salad with Olive Oil & Lemon",
    "Calories: 60 kcal",
    "Protein: 1g",
    "Carbohydrates: 4g",
    "Fibre: 2g",
    "Fats: 5g",
  ];

  final List<String> dinner = [
    "Grilled Tofu with Balsamic Glaze",
    "Calories: 180 kcal",
    "Protein: 20g",
    "Carbohydrates: 4g",
    "Fats: 10g",
    "Fibre: 2g",
    "White Bean & Spinach Soup",
    "Calories: 150 kcal",
    "Carbohydrates: 20g",
    "Protein: 10g",
    "Fats: 4g",
    "Fibre: 6g",
    "Steamed Asparagus with Olive Oil",
    "Calories: 35 kcal",
    "Carbohydrates: 4g",
    "Fibre: 2g",
    "Protein: 2g",
    "Fats: 1.5g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wednesday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle + 10,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BREAKFAST
              Text(
                'BREAKFAST',
                style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.normal,
                  color: Colors.green.shade800,
                ),
              ),
              SizedBox(height: padding / 2),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets7/images7/bha.jpg',
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
                    contentPadding: EdgeInsets.zero,
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
              SizedBox(height: padding),
              Text(
                'LUNCH',
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.normal,
                  fontSize: fontSizeTitle,
                ),
              ),
              SizedBox(height: padding / 2),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets7/images7/chia.jpeg',
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
                    contentPadding: EdgeInsets.zero,
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
              SizedBox(height: padding),
              Text(
                'DINNER',
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.normal,
                  fontSize: fontSizeTitle,
                ),
              ),
              SizedBox(height: padding / 2),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets12/images12/q.jpeg',
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
                    padding: EdgeInsets.all(padding / 2),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
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
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
