import 'package:flutter/material.dart';

class obesejapan extends StatefulWidget {
  const obesejapan({super.key});

  @override
  State<obesejapan> createState() => _obesejapanState();
}

class _obesejapanState extends State<obesejapan> {
  final List<String> breakfast = [
    "1 bowl Miso Soup with Tofu & Veggies",
    "Calories: 80–100 kcal",
    "Carbs: 8–10 g",
    "Protein: 8–10 g",
    "Fat: 3–5 g",
    "Fiber: 2–3 g",
    "Sodium: 700–900 mg (from miso paste)",
    "½ cup steamed brown rice",
    "Calories: 110 kcal",
    "Carbs: 23 g",
    "Protein: 2 g",
    "Fat: 1 g",
    "Fiber: 2 g",
  ];

  final List<String> lunch = [
    "Grilled salmon(3 oz) ",
    "Calories: 180–200 kcal",
    "Carbs: 0 g",
    "Protein: 22 g",
    "Fat: 10–12 g (omega-3 fatty acids)",
    "Fiber: 0 g",
    "1 bowl sauted vegetable",
    "Calories: 80–100 kcal",
    "Carbs: 12–15 g",
    "Protein: 3 g",
    "Fat: 5–7 g",
    "Fiber: 4 g",
    "japnease pickle(1 oz)",
    "Calories: 10–15 kcal",
    "Carbs: 3–4 g",
    "Protein: 0 g",
    "Fat: 0 g",
    "Fiber: 1 g",
  ];

  final List<String> dinner = [
    "Chicken Teriyaki(3 oz)",
    "Calories: 220–250 kcal",
    "Carbs: 12–15 g",
    "Protein: 30 g",
    "Fat: 4–6 g",
    "Fiber: 0 g",
    "1 bowl steamed vegetables",
    "Calories: 60–80 kcal",
    "Carbs: 10–12 g",
    "Protein: 3 g",
    "Fat: 1–2 g",
    "Fiber: 4–5 g",
    "1 bowl cauliflower rice",
    "Calories: 25–40 kcal",
    "Carbs: 5–8 g",
    "Protein: 2 g",
    "Fat: 0–2 g",
    "Fiber: 3 g",
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
          'Monday',
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
                  'BREAKFAST',
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
                      'assets5/images5/ula.jpg',
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
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets5/images5/boil.jpg',
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
                          fontSize: fontSizeTitle),
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
                          'assets5/images5/old.webp',
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
