import 'package:flutter/material.dart';

class wednesdaygutindianrrr extends StatefulWidget {
  const wednesdaygutindianrrr({super.key});

  @override
  State<wednesdaygutindianrrr> createState() => _wednesdaygutindianrrrState();
}

class _wednesdaygutindianrrrState extends State<wednesdaygutindianrrr> {
  final List<String> breakfast = [
    "1 bowl poha with vegetables and peanuts",
    "Calories: 220 kcal",
    "Protein: 5 g",
    "Carbohydrates: 32 g",
    "Fibre: 3 g",
    "Fats: 8 g",

    "1 cup warm cumin water",
    "Calories: 4 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl bottle gourd (lauki) curry",
    "Calories: 90 kcal",
    "Protein: 3 g",
    "Carbs: 10 g",
    "Fats: 4 g",
    "Fiber: 3 g",

    "1 medium jowar roti",
    "Calories: 110 kcal",
    "Protein: 3 g",
    "Carbs: 22 g",
    "Fats: 1 g",
    "Fiber: 2 g",

    "1 cup mint and coriander chaas",
    "Calories: 40 kcal",
    "Protein: 2 g",
    "Carbs: 5 g",
    "Fats: 1 g",
    "Fiber: 0 g",
  ];

  final List<String> dinner = [
    "1 bowl moong dal khichdi (less spices, ghee added)",
    "Calories: 250 kcal",
    "Protein: 9 g",
    "Carbs: 36 g",
    "Fat: 7 g",
    "Fiber: 4 g",

    "1 small bowl sautéed spinach with garlic",
    "Calories: 70 kcal",
    "Protein: 3 g",
    "Carbs: 5 g",
    "Fat: 4 g",
    "Fiber: 3 g",

    "1 cup ajwain and fennel herbal tea",
    "Calories: 3 kcal",
    "Protein: 0 g",
    "Carbs: 1 g",
    "Fat: 0 g",
    "Fiber: 0 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friday',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green.shade800)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('BREAKFAST',
                    style: TextStyle(
                        fontSize: 20,
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
                  'assets2/images2/mit.jpeg',
                  height: 200,
                  width: 150,
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
                offset: Offset(16, 0),
                child: Text('LUNCH',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/anju.jpeg',
                  height: 200,
                  width: 150,
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
                offset: Offset(16, 0),
                child: Text('DINNER',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/img_25.png',
                  height: 200,
                  width: 150,
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
