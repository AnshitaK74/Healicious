import 'package:flutter/material.dart';

class saturdaydiabetesjapan extends StatefulWidget {
  const saturdaydiabetesjapan({super.key});

  @override
  State<saturdaydiabetesjapan> createState() => _saturdaydiabetesjapanState();
}

class _saturdaydiabetesjapanState extends State<saturdaydiabetesjapan> {
  final List<String> breakfast = [
    "Guava slices (1 medium fruit)\n",
    "Calories: 68 kcal\n",
    "Carbohydrates: 14g\n",
    "Protein: 2.6g\n",
    "Fats: 0.9g\n",
    "Fibre: 5g\n",
    "Steamed Thai Rice Cakes (2 small pcs)\n",
    "Calories: 80 kcal\n",
    "Carbohydrates: 15g\n",
    "Protein: 1.5g\n",
    "Fats: 1g\n",
    "Fibre: 1g\n",
    "Ginger-Lemongrass Tea\n",
    "Calories: 2 kcal\n",
  ];

  final List<String> lunch = [
    "Thai Veg Glass Noodle Salad (Yum Woon Sen)\n",
    "Calories: 140 kcal\n",
    "Protein: 3g\n",
    "Carbohydrates: 20g\n",
    "Fibre: 2g\n",
    "Fats: 5g\n",
    "Tofu Thai Red Curry (light coconut)\n",
    "Calories: 160 kcal\n",
    "Protein: 8g\n",
    "Carbohydrates: 6g\n",
    "Fibre: 2g\n",
    "Fats: 10g\n",
    "Steamed Brown Rice (1 cup)\n",
    "Calories: 150 kcal\n",
    "Protein: 3g\n",
    "Carbohydrates: 30g\n",
    "Fibre: 2g\n",
    "Fats: 1g\n",
  ];

  final List<String> dinner = [
    "Thai Clear Soup with Veggies & Tofu\n",
    "Calories: 90 kcal\n",
    "Carbohydrates: 6g\n",
    "Protein: 5g\n",
    "Fats: 4g\n",
    "Fibre: 1.5g\n",
    "Grilled Eggplant Salad with Lime Dressing\n",
    "Calories: 80 kcal\n",
    "Carbohydrates: 8g\n",
    "Protein: 2g\n",
    "Fats: 4g\n",
    "Fibre: 3g\n",
    "Chia-Coconut Dessert (no sugar, 1/2 bowl)\n",
    "Calories: 100 kcal\n",
    "Carbohydrates: 5g\n",
    "Protein: 3g\n",
    "Fats: 7g\n",
    "Fibre: 4g\n",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
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
          'Saturday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSizeTitle + 10,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BREAKFAST ',
                  style: TextStyle(
                    fontSize: fontSizeTitle,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets2/images2/images-18.jpeg',
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
                        fontSize: fontSizeTitle,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/tofu.jpg',
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
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
                        fontSize: fontSizeTitle,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/curd.jpeg',
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
