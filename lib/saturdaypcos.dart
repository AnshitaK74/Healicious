import 'package:flutter/material.dart';

class saturdaypcos extends StatefulWidget {
  const saturdaypcos({super.key});

  @override
  State<saturdaypcos> createState() => _saturdaypcosState();
}

class _saturdaypcosState extends State<saturdaypcos> {
  final List<String> breakfast = [
    "1 Sattu Paratha",
    "Calories: 220-240 kcal",
    "Protein: 10-12 g",
    "Carbohydrates: 28-30 g",
    "Fats: 8-10 g",
    "Fibre: 5 g",
    "2 Tbsp of Mint Chutney",
    "Calories: 15-20 kcal",
    "Protein: 0.5 g",
    "Carbohydrates: 2-3 g",
    "Fats: 0-0.5 g",
    "Fibre: 1 g"
  ];

  final List<String> lunch = [
    "1 Bowl SoyaBean Vegetable",
    "Calories: 250-300 kcal",
    "Protein: 20-22 g",
    "Carbohydrates: 20-25 g",
    "Fats: 12-14 g",
    "Fiber: 8-10 g",
    "2 MultiGrain Roti",
    "Calories: 180–220 kcal",
    "Protein: 5-7 g",
    "Carbohydrates: 35-40 g",
    "Fats: 4-6 g",
    "Fiber: 5-6 g"
  ];

  final List<String> dinner = [
    "1 Bowl Mixed Daal",
    "Calories: 200-250 kcal",
    "Protein: 12-15 g",
    "Carbohydrates: 30-35 g",
    "Fats: 7-8 g",
    "Fiber: 9-10 g",
    "1 Bowl White Rice",
    "Calories: 200 kcal",
    "Protein: 4 g",
    "Carbohydrates: 45 g",
    "Fats: 0.5 g",
    "Fiber: 0.5 g"
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
    final double borderRadius = 10; // you can also do screenWidth * 0.025 if you want fully responsive radius
    final double imageHeight = screenHeight * 0.25;
    final double imageWidth = screenWidth * 0.4;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saturday',
          style: TextStyle(
              fontSize: fontSizeTitle + 10,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800),
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
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(
                'assets2/images2/poonam.jpeg',
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
                            : FontWeight.normal),
                  ),
                );
              }),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: padding, top: padding),
              child: Text(
                'LUNCH',
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
                'assets2/images2/sev.webp',
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
                            : FontWeight.normal),
                  ),
                );
              }),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: padding, top: padding),
              child: Text(
                'DINNER',
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
                'assets2/images2/oo.jpg',
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
                            : FontWeight.normal),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
