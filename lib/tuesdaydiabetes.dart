import 'package:flutter/material.dart';

class tuesdaydiabetesjapan extends StatefulWidget {
  const tuesdaydiabetesjapan({super.key});

  @override
  State<tuesdaydiabetesjapan> createState() => _tuesdaydiabetesjapanState();
}

class _tuesdaydiabetesjapanState extends State<tuesdaydiabetesjapan> {
  final List<String> breakfast = [
    "1 small bowl of Miso Soup",
    "Calories: 50 kcal",
    "Protein: 4 g",
    "Carbs: 5 g",
    "Fat: 1.5 g",
    "Fiber: 1 g",
    "1 whole Boiled Egg ",
    "Calories: 70 kcal",
    "Protein: 6 g",
    "Carbs: 0.6 g",
    "Fat: 5 g",
    "Fiber: 0 g",
    "½ medium of guava",
    "Calories: 57 kcal",
    "Protein: 1 g",
    "Carbs: 12 g",
    "Fat: 0.5 g",
    "Fiber: 5 g",
  ];

  final List<String> lunch = [
    "½ plate of Tofu Steak ",
    "Calories: 160 kcal",
    "Protein: 14 g",
    "Carbs: 4 g",
    "Fat: 11 g",
    "Fiber: 2 g",
    "1 bowl of Stir-Fried Vegetables",
    "Calories: 50 kcal",
    "Protein: 3 g",
    "Carbs: 8 g",
    "Fat: 0.5 g",
    "Fiber: 3 g",
    "½ bowl of Brown Rice",
    "Calories: 110 kcal",
    "Protein: 2.5 g",
    "Carbs: 23 g",
    "Fat: 1 g",
    "Fiber: 1.8 g",
  ];

  final List<String> dinner = [
    "1 bowl of Soybean-Veg Stir-Fry",
    "Calories: 180 kcal",
    "Protein: 16 g",
    "Carbs: 10 g",
    "Fat: 6 g",
    "Fiber: 5 g",
    "1 bowl of Shirataki Noodles",
    "Calories: 10 kcal",
    "Protein: 1 g",
    "Carbs: 2 g",
    "Fat: 0 g",
    "Fiber: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery values same as Monday's
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
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets5/images5/miso.jpg',
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
            child: Transform.translate(
              offset: Offset(padding, 0),
              child: Text(
                'LUNCH',
                style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeTitle),
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets5/images5/rice.jpeg',
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
            child: Transform.translate(
              offset: Offset(padding, 0),
              child: Text(
                'DINNER',
                style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: fontSizeTitle),
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets5/images5/shirataki.jpg',
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
