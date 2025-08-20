import 'package:flutter/material.dart';

class mondayindia extends StatefulWidget {
  const mondayindia({super.key});

  @override
  State<mondayindia> createState() => _mondayindiaState();
}

class _mondayindiaState extends State<mondayindia> {
  final List<String> breakfast = [
    "1 bowl of Moong dal chilla with mint chutney",
    "Calories: 180 kcal",
    "Protein: 9 g",
    "Carbohydrates: 22 g",
    "Fibre: 3 g",
    "Fats: 6 g",

    "1 cup of Ginger-lemon herbal tea",
    "Calories: 5 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 medium bowl of Khichdi (brown rice + moong dal + bottle gourd)",
    "Calories: 240 kcal",
    "Protein: 9 g",
    "Carbs: 38 g",
    "Fats: 5 g",
    "Fiber: 4 g",

    "1 bowl of curd (probiotic)",
    "Calories: 80 kcal",
    "Protein: 4 g",
    "Carbs: 6 g",
    "Fats: 4 g",
    "Fiber: 0 g",

    "½ plate beetroot & carrot salad with lemon dressing",
    "Calories: 60 kcal",
    "Protein: 1.5 g",
    "Carbs: 10 g",
    "Fats: 2 g",
    "Fiber: 3.5 g",
  ];

  final List<String> dinner = [
    "1 bowl of Palak paneer (light oil)",
    "Calories: 200 kcal",
    "Protein: 12 g",
    "Carbs: 8 g",
    "Fat: 14 g",
    "Fiber: 3 g",

    "1 phulka (no ghee)",
    "Calories: 90 kcal",
    "Carbs: 18 g",
    "Fat: 1.5 g",
    "Fiber: 2 g",

    "1 bowl of lauki (bottle gourd) sabzi",
    "Calories: 70 kcal",
    "Protein: 2 g",
    "Carbs: 10 g",
    "Fat: 3 g",
    "Fiber: 3 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery variables for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text('Monday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeTitle + 10,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('BREAKFAST',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/kachori.jpg',
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
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
                child: Text('LUNCH',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/eggroll.jpeg',
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
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(padding, 0),
                child: Text('DINNER',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: fontSizeTitle)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/ji.jpeg',
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
                }),
          ],
        ),
      ),
    );
  }
}
