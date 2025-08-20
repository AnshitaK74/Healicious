import 'package:flutter/material.dart';

class thursdaypcos extends StatefulWidget {
  const thursdaypcos({super.key});

  @override
  State<thursdaypcos> createState() => _thursdaypcosState();
}

class _thursdaypcosState extends State<thursdaypcos> {
  final List<String> breakfast = [
    "2 Moong Dal Chilla",
    "Calories: 210–230 kcal",
    "Protein: 14–16g",
    "Fibre: 6–7g",
    "Carbohydrates: 25–28g",
    "Fat: 3–4g",
    "Mint Chutney",
    "Calories: 15–20 kcal",
    "Protein: 0.5g",
    "Fibre: 1g",
    "Carbohydrates: 2–3g",
    "Fat: 0–0.5g",
  ];

  final List<String> lunch = [
    "2 Multi Grain Roti (Wheat + Jowar + Bajra)",
    "Calories: 180 kcal",
    "Protein: 6g",
    "Fibre: 6–7g",
    "Carbohydrates: 30g",
    "Fat: 3g",
    "1 Cup Chana Dal",
    "Calories: 270 kcal",
    "Protein: 17–18g",
    "Carbohydrates: 40–45g",
    "Fibre: 12–14g",
    "Fat: 4–5g",
    "1 Bowl Curd",
    "Calories: 100 kcal",
    "Protein: 8–10g",
    "Carbohydrates: 6–10g",
    "Fat: 4–8g",
  ];

  final List<String> dinner = [
    "1 Plate Quinoa Khichadi",
    "Calories: 350–380 kcal",
    "Protein: 14–16g",
    "Carbohydrates: 45–48g",
    "Fat: 6–8g",
    "Fats: 10–12g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double padding = screenWidth * 0.04;
    final double fontSizeTitle = screenWidth * 0.05;
    final double fontSizeText = screenWidth * 0.04;
    final double borderRadius = 10; // Or screenWidth * 0.025 if you want scaling radius
    final double imageHeight = screenHeight * 0.25;
    final double imageWidth = screenWidth * 0.4;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thursday',
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
                'assets2/images2/acb.jpeg',
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
                'assets2/images2/korma.jpeg',
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
                'assets2/images2/palak.jpg',
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
          )
        ]),
      ),
    );
  }
}
