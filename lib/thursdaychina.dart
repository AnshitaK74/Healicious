import 'package:flutter/material.dart';

class ThursdayChineseDiet extends StatefulWidget {
  const ThursdayChineseDiet({super.key});

  @override
  State<ThursdayChineseDiet> createState() => _ThursdayChineseDietState();
}

class _ThursdayChineseDietState extends State<ThursdayChineseDiet> {
  final List<String> breakfast = [
    "Chinese-style Scrambled Eggs with Tofu",
    "Calories: 220 kcal",
    "Protein: 18g",
    "Carbohydrates: 5g",
    "Fats: 15g",
    "Fiber: 3g",
    "1 Glass Fresh Orange Juice",
    "Calories: 100 kcal",
    "Carbohydrates: 24g",
    "Protein: 1g",
    "Fats: 0g",
    "Fiber: 0g",
  ];

  final List<String> lunch = [
    "1 Bowl Stir-fried Shrimp with Bok Choy",
    "Calories: 280 kcal",
    "Protein: 35g",
    "Carbohydrates: 10g",
    "Fats: 12g",
    "Fiber: 4g",
    "1/2 Cup Quinoa",
    "Calories: 110 kcal",
    "Protein: 4g",
    "Carbohydrates: 20g",
    "Fats: 2g",
    "Fiber: 2g",
  ];

  final List<String> dinner = [
    "1 Bowl Chicken with Snow Peas",
    "Calories: 300 kcal",
    "Protein: 40g",
    "Carbohydrates: 10g",
    "Fats: 15g",
    "Fiber: 5g",
    "1 Small Bowl Steamed Bok Choy",
    "Calories: 30 kcal",
    "Protein: 3g",
    "Carbohydrates: 5g",
    "Fats: 0g",
    "Fiber: 2g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery for responsiveness
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BREAKFAST
              Text('BREAKFAST',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800)),
              SizedBox(height: padding),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets16/images16/a.jpeg',
                    height: imageHeight,
                    width: imageWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
              SizedBox(height: padding),
              // LUNCH
              Text('LUNCH',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800)),
              SizedBox(height: padding),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets16/images16/b.jpeg',
                    height: imageHeight,
                    width: imageWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
              SizedBox(height: padding),
              // DINNER
              Text('DINNER',
                  style: TextStyle(
                      fontSize: fontSizeTitle,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800)),
              SizedBox(height: padding),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets16/images16/c.jpeg',
                    height: imageHeight,
                    width: imageWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
