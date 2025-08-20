import 'package:flutter/material.dart';

class wednesdaygutindianr extends StatefulWidget {
  const wednesdaygutindianr({super.key});

  @override
  State<wednesdaygutindianr> createState() => _wednesdaygutindianrState();
}

class _wednesdaygutindianrState extends State<wednesdaygutindianr> {
  final List<String> breakfast = [
    "1 bowl of poha with peas, curry leaves, and lemon",
    "Calories: 190 kcal",
    "Protein: 4 g",
    "Carbohydrates: 30 g",
    "Fibre: 3 g",
    "Fats: 5 g",

    "1 cup of warm ajwain (carom seed) water",
    "Calories: 4 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl of chana dal curry (light oil)",
    "Calories: 210 kcal",
    "Protein: 11 g",
    "Carbs: 25 g",
    "Fats: 6 g",
    "Fiber: 5 g",

    "1 medium multigrain roti (no ghee)",
    "Calories: 100 kcal",
    "Protein: 3 g",
    "Carbs: 18 g",
    "Fats: 2 g",
    "Fiber: 2.5 g",

    "1 small katori grated carrot & cucumber salad",
    "Calories: 45 kcal",
    "Protein: 1 g",
    "Carbs: 7 g",
    "Fats: 1.5 g",
    "Fiber: 3 g",
  ];

  final List<String> dinner = [
    "1 bowl of ridge gourd (turai) curry with garlic and minimal oil",
    "Calories: 90 kcal",
    "Protein: 3 g",
    "Carbs: 10 g",
    "Fat: 3 g",
    "Fiber: 3 g",

    "1 medium phulka (no ghee)",
    "Calories: 90 kcal",
    "Carbs: 18 g",
    "Fat: 1.5 g",
    "Fiber: 2 g",

    "1 small bowl of plain curd with flaxseed powder",
    "Calories: 70 kcal",
    "Protein: 3 g",
    "Carbs: 5 g",
    "Fat: 3 g",
    "Fiber: 1.5 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuesday',
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
                  'assets2/images2/pakora.jpeg',
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
                  'assets2/images2/kachori.jpg',
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
                  'assets2/images2/ji.jpeg',
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
