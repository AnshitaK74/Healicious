import 'package:flutter/material.dart';

class TuesdayChineseDiet extends StatefulWidget {
  const TuesdayChineseDiet({super.key});

  @override
  State<TuesdayChineseDiet> createState() => _TuesdayChineseDietState();
}

class _TuesdayChineseDietState extends State<TuesdayChineseDiet> {
  final List<String> breakfast = [
    "Scrambled Eggs with Mushrooms",
    "Calories: 220 kcal",
    "Protein: 18g",
    "Carbohydrates: 5g",
    "Fats: 15g",
    "Fiber: 1g",
    "1 Fruit (e.g., Banana or Pear)",
    "Calories: 90–120 kcal",
    "Carbohydrates: 24g",
    "Protein: 1g",
    "Fats: 0g",
    "Fiber: 3g",
  ];

  final List<String> lunch = [
    "1 Bowl Stir-fried Chicken with Bell Peppers",
    "Calories: 280 kcal",
    "Protein: 25g",
    "Carbohydrates: 12g",
    "Fats: 16g",
    "Fiber: 3g",
    "1/2 Cup Steamed Jasmine Rice",
    "Calories: 100 kcal",
    "Protein: 2g",
    "Carbohydrates: 22g",
    "Fats: 0g",
    "Fiber: 0g",
  ];

  final List<String> dinner = [
    "1 Bowl Fish with Ginger Soy Sauce",
    "Calories: 300 kcal",
    "Protein: 35g",
    "Carbohydrates: 5g",
    "Fats: 17g",
    "Fiber: 2g",
    "1 Small Bowl of Stir-fried Bok Choy",
    "Calories: 40 kcal",
    "Protein: 3g",
    "Carbohydrates: 6g",
    "Fats: 1g",
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
          'Tuesday',
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
                    'assets3/imgaes4/opl.jpeg',
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
                    'assets3/imgaes4/virat.jpeg',
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
                    'assets3/imgaes4/qwe.jpeg',
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
