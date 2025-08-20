import 'package:flutter/material.dart';

class thursdaygutindianr extends StatefulWidget {
  const thursdaygutindianr({super.key});

  @override
  State<thursdaygutindianr> createState() => _thursdaygutindianrState();
}

class _thursdaygutindianrState extends State<thursdaygutindianr> {
  final List<String> breakfast = [
    "2 steamed idlis with coconut chutney",
    "Calories: 210 kcal",
    "Protein: 6 g",
    "Carbohydrates: 32 g",
    "Fibre: 2 g",
    "Fats: 6 g",

    "1 cup ajwain water",
    "Calories: 5 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl lauki (bottle gourd) curry with cumin and turmeric",
    "Calories: 95 kcal",
    "Protein: 3 g",
    "Carbs: 8 g",
    "Fats: 5 g",
    "Fiber: 3 g",

    "1 phulka (no ghee)",
    "Calories: 90 kcal",
    "Protein: 3 g",
    "Carbs: 18 g",
    "Fats: 1.5 g",
    "Fiber: 2 g",

    "½ cup plain curd",
    "Calories: 45 kcal",
    "Protein: 2.5 g",
    "Carbs: 3 g",
    "Fats: 2.5 g",
    "Fiber: 0 g",
  ];

  final List<String> dinner = [
    "1 bowl sabudana khichdi with peanuts and curry leaves",
    "Calories: 180 kcal",
    "Protein: 5 g",
    "Carbs: 25 g",
    "Fat: 7 g",
    "Fiber: 2 g",

    "1 tsp mint chutney",
    "Calories: 15 kcal",
    "Protein: 0 g",
    "Carbs: 2 g",
    "Fat: 0 g",
    "Fiber: 0.5 g",

    "1 cup fennel seed tea",
    "Calories: 2 kcal",
    "Protein: 0 g",
    "Carbs: 0.5 g",
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
        title: Text('Thursday',
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
                  'assets2/images2/poha.jpeg',
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
                  'assets2/images2/sabu.jpeg',
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
