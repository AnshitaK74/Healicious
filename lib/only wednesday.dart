import 'package:flutter/material.dart';

class wednesdaygutindianrr extends StatefulWidget {
  const wednesdaygutindianrr({super.key});

  @override
  State<wednesdaygutindianrr> createState() => _wednesdaygutindianrrState();
}

class _wednesdaygutindianrrState extends State<wednesdaygutindianrr> {
  final List<String> breakfast = [
    "1 bowl of moong dal and spinach cheela",
    "Calories: 210 kcal",
    "Protein: 9 g",
    "Carbohydrates: 25 g",
    "Fibre: 4 g",
    "Fats: 7 g",

    "1 glass cumin-coriander-fennel detox water",
    "Calories: 4 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fibre: 0 g",
  ];

  final List<String> lunch = [
    "1 katori lauki (bottle gourd) chana dal curry",
    "Calories: 170 kcal",
    "Protein: 8 g",
    "Carbohydrates: 20 g",
    "Fats: 5 g",
    "Fiber: 4 g",

    "1 medium jowar roti with ghee",
    "Calories: 120 kcal",
    "Protein: 3 g",
    "Carbs: 20 g",
    "Fats: 3 g",
    "Fiber: 3 g",

    "1 cup buttermilk with roasted ajwain",
    "Calories: 40 kcal",
    "Protein: 2 g",
    "Carbs: 4 g",
    "Fats: 2 g",
    "Fiber: 0 g",
  ];

  final List<String> dinner = [
    "1 bowl of soft khichdi with moong dal and grated lauki",
    "Calories: 200 kcal",
    "Protein: 7 g",
    "Carbs: 30 g",
    "Fat: 4 g",
    "Fiber: 3 g",

    "1 cup sauteed cabbage with turmeric and cumin",
    "Calories: 70 kcal",
    "Protein: 2 g",
    "Carbs: 8 g",
    "Fat: 3 g",
    "Fiber: 2 g",

    "1 cup chamomile tea",
    "Calories: 2 kcal",
    "Protein: 0 g",
    "Carbs: 0 g",
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
        title: Text('Wednesday',
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
                  'assets2/images2/op.jpeg', // same as before
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
                  'assets2/images2/poha.jpeg', // same as before
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
                  'assets2/images2/op.jpeg', // same as before
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
