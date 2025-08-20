import 'package:flutter/material.dart';

class SaturdayItalianGutHighProtein extends StatefulWidget {
  const SaturdayItalianGutHighProtein({super.key});

  @override
  State<SaturdayItalianGutHighProtein> createState() =>
      _SaturdayItalianGutHighProteinState();
}

class _SaturdayItalianGutHighProteinState
    extends State<SaturdayItalianGutHighProtein> {
  final List<String> breakfast = [
    "Greek Yogurt (unsweetened) with Chia Seeds and Berries",
    "Calories: 250 kcal",
    "Proteins: 20g",
    "Carbohydrates: 12g",
    "Fats: 10g",
    "Fibre: 5g",
    "Green Tea",
    "Calories: 0 kcal",
    "Fibre: 0g",
  ];

  final List<String> lunch = [
    "Grilled Chicken Salad with Rocket, Cherry Tomatoes & Olive Oil",
    "Calories: 300 kcal",
    "Protein: 32g",
    "Carbohydrates: 6g",
    "Fats: 16g",
    "Fibre: 3g",
    "Roasted Carrots with Thyme",
    "Calories: 70 kcal",
    "Protein: 1g",
    "Carbohydrates: 10g",
    "Fibre: 3g",
    "Fats: 3g",
  ];

  final List<String> dinner = [
    "Grilled Salmon with Lemon and Herbs",
    "Calories: 240 kcal",
    "Protein: 26g",
    "Carbohydrates: 0g",
    "Fats: 14g",
    "Fibre: 0g",
    "Quinoa & White Bean Bowl",
    "Calories: 180 kcal",
    "Carbohydrates: 20g",
    "Protein: 9g",
    "Fats: 5g",
    "Fibre: 4g",
    "Steamed Asparagus with Olive Oil",
    "Calories: 40 kcal",
    "Carbohydrates: 4g",
    "Fibre: 2g",
    "Protein: 2g",
    "Fats: 2g",
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
          'Saturday',
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
                    'assets11/images11/w.jpeg',
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
                    'assets12/images12/awe.jpeg',
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
                    'assets12/images12/butter.jpg',
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
