import 'package:flutter/material.dart';

class fridaypcos extends StatefulWidget {
  const fridaypcos({super.key});

  @override
  State<fridaypcos> createState() => _fridaypcosState();
}

class _fridaypcosState extends State<fridaypcos> {
  final List<String> breakfast = [
    "Poha",
    "Calories: 180 kcal",
    "Protein: 4g",
    "Carbohydrates: 30g",
    "Fats: 5g",
    "Fibre: 4g",
    "Tofu Scramble",
    "Calories: 130 kcal",
    "Protein: 12g",
    "Carbohydrates: 3g",
    "Fats: 8g",
    "Fibre: 2g",
    "1 Sourdough Bread",
    "Calories: 90 kcal",
    "Protein: 3g",
    "Carbohydrates: 18g",
    "Fats: 0.5g",
    "Fibre: 2g",
    "1 Coconut Water",
    "Calories: 45 kcal",
    "Protein: 0.5g",
    "Carbohydrates: 9g",
    "Fats: 0g",
    "Fibre: 0g",
  ];

  final List<String> lunch = [
    "Chickpea Quinoa",
    "Calories: 450 kcal",
    "Protein: 20g",
    "Carbohydrates: 35g",
    "Fats: 22g",
    "Fibre: 10g",
  ];

  final List<String> dinner = [
    "1 Bowl Mixed Dal",
    "Calories: 180–200 kcal",
    "Protein: 13–15g",
    "Carbs: 25g",
    "Fats: 4g",
    "Fibre: 7g",
    "1 Bowl Vegetable Stir Fry",
    "Calories: 120–150 kcal",
    "Protein: 4–5g",
    "Carbs: 20g",
    "Fats: 7g",
    "Fibre: 6g",
    "1 Bajra Roti",
    "Calories: 140–150 kcal",
    "Protein: 4g",
    "Carbs: 28g",
    "Fats: 1–2g",
    "Fibre: 4g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(":") && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double padding = screenWidth * 0.04;
    final double fontSizeTitle = screenWidth * 0.05;
    final double fontSizeText = screenWidth * 0.04;
    final double borderRadius = 10; // can adjust if you want scaling with screenWidth * 0.025
    final double imageHeight = screenHeight * 0.25;
    final double imageWidth = screenWidth * 0.4;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friday',
          style: TextStyle(
            fontSize: fontSizeTitle + 10,
            fontWeight: FontWeight.bold,
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
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(
                'assets2/images2/juice.jpeg',
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
                  fontWeight: FontWeight.normal,
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(
                'assets2/images2/rice.jpeg',
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
                  fontWeight: FontWeight.normal,
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(
                'assets2/images2/paratha.jpeg',
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
        ]),
      ),
    );
  }
}
