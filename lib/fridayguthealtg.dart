import 'package:flutter/material.dart';

class FridayItalianGutHighProtein extends StatefulWidget {
  const FridayItalianGutHighProtein({super.key});

  @override
  State<FridayItalianGutHighProtein> createState() =>
      _FridayItalianGutHighProteinState();
}

class _FridayItalianGutHighProteinState
    extends State<FridayItalianGutHighProtein> {
  final List<String> breakfast = [
    "Cottage Cheese with Flaxseeds and Pear Slices",
    "Calories: 240 kcal",
    "Proteins: 18g",
    "Carbohydrates: 14g",
    "Fats: 12g",
    "Fibre: 4g",
    "Herbal Tea (unsweetened)",
    "Calories: 0 kcal",
    "Fibre: 0g",
  ];

  final List<String> lunch = [
    "Tuna Salad with White Beans, Arugula & Olive Oil",
    "Calories: 330 kcal",
    "Protein: 30g",
    "Carbohydrates: 18g",
    "Fats: 16g",
    "Fibre: 6g",
    "Grilled Zucchini Slices",
    "Calories: 40 kcal",
    "Protein: 1g",
    "Carbohydrates: 3g",
    "Fibre: 1g",
    "Fats: 3g",
  ];

  final List<String> dinner = [
    "Baked Chicken with Rosemary and Garlic",
    "Calories: 210 kcal",
    "Protein: 30g",
    "Carbohydrates: 1g",
    "Fats: 9g",
    "Fibre: 0g",
    "Minestrone Soup (no pasta, extra beans)",
    "Calories: 150 kcal",
    "Carbohydrates: 18g",
    "Protein: 9g",
    "Fats: 3g",
    "Fibre: 5g",
    "Steamed Green Beans with Olive Oil",
    "Calories: 50 kcal",
    "Carbohydrates: 5g",
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
          'Friday',
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
                    'assets11/images11/t.jpg',
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
                    'assets12/images12/moga.jpeg',
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
                    'assets12/images12/iop.jpeg',
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
